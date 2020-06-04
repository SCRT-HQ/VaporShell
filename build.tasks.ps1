
Param(
    [Parameter(Mandatory, Position = 0)]
    [String]
    $ModuleName,
    [Parameter()]
    [String]
    $NextModuleVersion,
    [Parameter()]
    [String]
    $GalleryVersion,
    [Parameter()]
    [String]
    $ManifestVersion,
    [Parameter()]
    [String]
    $SourceModuleDirectory,
    [Parameter()]
    [String]
    $SourceAdditionalModuleDirectory,
    [Parameter()]
    [String]
    $SourceManifestPath,
    [Parameter()]
    [String]
    $TargetDirectory,
    [Parameter()]
    [String]
    $TargetManifestPath,
    [Parameter()]
    [String]
    $TargetPSM1Path,
    [Parameter()]
    [String]
    $TargetModuleDirectory,
    [Parameter()]
    [String]
    $TargetVersionDirectory,
    [Parameter()]
    [Switch]
    $NoUpdate,
    [Parameter()]
    [Switch]
    $CoreOnly
)

Task . Build, Import

# Synopsis: Run all core tasks
Task Full Init, Build, Import, PesterBefore, Test, BuildReleaseZips

Task Init {
    Import-Module Configuration
    Get-ChildItem (Join-Path $PSScriptRoot 'ci') -Filter '*.ps1' | Where-Object { $_.BaseName -notmatch "(GitHubReleaseNotes|gist\.githubusercontent\.com.*scrthq)" } | ForEach-Object {
        . $_.FullName
    }
    $Script:SourceModuleDirectory = [System.IO.Path]::Combine($BuildRoot, $ModuleName)
    $Script:SourceAdditionalModuleDirectory = [System.IO.Path]::Combine($BuildRoot, 'ServiceModules')
    $Script:GalleryVersion = (Get-PSGalleryVersion $ModuleName).Version
    $Script:SourceManifestPath = Join-Path $SourceModuleDirectory "$($ModuleName).psd1"
    $Script:ManifestVersion = ((Import-Metadata -Path $SourceManifestPath).ModuleVersion.Split('.')[0..1] + '0') -join '.'
    $Script:NextModuleVersion = Get-NextModuleVersion -GalleryVersion $GalleryVersion -ManifestVersion $ManifestVersion
    $Script:TargetDirectory = [System.IO.Path]::Combine($BuildRoot, 'BuildOutput')
    $Script:TargetModuleDirectory = [System.IO.Path]::Combine($TargetDirectory, $ModuleName)
    $Script:TargetVersionDirectory = [System.IO.Path]::Combine($TargetModuleDirectory, $NextModuleVersion)
    $Script:TargetManifestPath = [System.IO.Path]::Combine($TargetVersionDirectory, "$($ModuleName).psd1")
    $Script:TargetPSM1Path = [System.IO.Path]::Combine($TargetVersionDirectory, "$($ModuleName).psm1")
    Write-BuildLog "Build System Details:"
    @(
        ""
        "~~~~~~~ Summary ~~~~~~~"
        "In CI?                 : $($IsCI -or (Test-Path Env:\TF_BUILD))"
        "Project                : $ModuleName"
        "Manifest Version       : $ManifestVersion"
        "Gallery Version        : $GalleryVersion"
        "Next Module Version    : $NextModuleVersion"
        "Engine                 : PowerShell $($PSVersionTable.PSVersion.ToString())"
        "Host OS                : $(if($PSVersionTable.PSVersion.Major -le 5 -or $IsWindows){"Windows"}elseif($IsLinux){"Linux"}elseif($IsMacOS){"macOS"}else{"[UNKNOWN]"})"
        "PWD                    : $PWD"
        ""
        "~~~~~ Directories ~~~~~"
        "SourceModuleDirectory  : $SourceModuleDirectory"
        "TargetDirectory        : $TargetDirectory"
        "TargetModuleDirectory  : $TargetModuleDirectory"
        "TargetVersionDirectory : $TargetVersionDirectory"
        "TargetManifestPath     : $TargetManifestPath"
        "TargetPSM1Path         : $TargetPSM1Path"
        ""
        "~~~~~ Environment ~~~~~"
    ) | Write-BuildLog
    Write-BuildLog "$((Get-ChildItem Env: | Where-Object {$_.Name -match "^(BUILD_|BH)"} | Sort-Object Name | Format-Table Name,Value -AutoSize | Out-String).Trim())"
    if (-not (Test-Path $TargetDirectory)) {
        New-Item $TargetDirectory -ItemType Directory -Force
    }
}

Task Clean Init, {
    remove 'BuildOutput'
}

Task CleanNonCoreFunctions Init, {
    $serviceModulePath = [System.IO.Path]::Combine($BuildRoot,'ServiceModules')
    Get-ChildItem $serviceModulePath -Directory | ForEach-Object {
        $publicPath = [System.IO.Path]::Combine($_.FullName,'Public')
        $classPath = [System.IO.Path]::Combine($_.FullName,'Classes')
        $publicPath,$classPath | ForEach-Object {
            Get-ChildItem $_ -Directory | ForEach-Object {
                remove $_.FullName
            }
        }
    }
}

Task CleanSubmodules Init, {
    Get-ChildItem 'BuildOutput' -Directory | Where-Object {$_.Name -ne $ModuleName} | ForEach-Object {
        remove $_.FullName
    }
}

# Synopsis: Updates module functions before compilation
Task UpdateFromSpecification -If { -not $NoUpdate -and -not $CoreOnly } Clean, CleanNonCoreFunctions, {
    git submodule update --recursive
    Get-ChildItem (Join-Path $PSScriptRoot 'ci') -Filter '*.ps1' | Where-Object { $_.BaseName -notmatch "(GitHubReleaseNotes|gist\.githubusercontent\.com.*scrthq)" } | ForEach-Object {
        . $_.FullName
    }
    Write-BuildLog 'Updating Resource and Property Type functions with current AWS spec sheet...'
    Update-VSResourceFunctions -ModuleVersion $NextModuleVersion
}

# Synopsis: Compile the submodules
Task BuildSubmodules Init,CleanSubmodules, {
    $submodulesToBuild = Get-ChildItem $SourceAdditionalModuleDirectory -Directory | Select-Object -ExpandProperty BaseName
    foreach ($sub in $SubmodulesToBuild) {
        $subSourceModuleDirectory = [System.IO.Path]::Combine($SourceAdditionalModuleDirectory, $sub)
        $subSourceManifestPath = Join-Path $subSourceModuleDirectory "$($sub).psd1"
        $subSourcePSM1Path = Join-Path $subSourceModuleDirectory "$($sub).psm1"
        $subTargetModuleDirectory = [System.IO.Path]::Combine($TargetDirectory, $sub)
        $subTargetVersionDirectory = [System.IO.Path]::Combine($subTargetModuleDirectory, $NextModuleVersion)
        $subTargetManifestPath = [System.IO.Path]::Combine($subTargetVersionDirectory, "$($sub).psd1")
        $subTargetPSM1Path = [System.IO.Path]::Combine($subTargetVersionDirectory, "$($sub).psm1")
        $functionsToExport = @()
        $aliasesToExport = @()
        if (-not (Test-Path $subTargetVersionDirectory)) {
            Write-BuildLog "Creating target folder for module: $sub..."
            New-Item -Path $subTargetVersionDirectory -ItemType Directory -Force
        }
        Write-BuildLog "Copying source PSM1 to target folder for submodule: $sub"
        $psm1 = Copy-Item -Path $subSourcePSM1Path -Destination $subTargetVersionDirectory -PassThru -Force

        Write-BuildLog "Bumping source manifest version from '$ManifestVersion' to '$NextModuleVersion' to prevent errors"
        Update-Metadata -Path $subSourceManifestPath -PropertyName ModuleVersion -Value $NextModuleVersion

        Write-BuildLog "Setting source manifest RequiredModules to VaporShell@$ManifestVersion"
        Update-Metadata -Path $subSourceManifestPath -PropertyName RequiredModules -Value @(@{ModuleName = 'VaporShell';ModuleVersion = $ManifestVersion})

        Write-BuildLog "Copying content from source manifest to target manifest"
        ([System.IO.File]::ReadAllText($subSourceManifestPath)).Trim() | Set-Content $subSourceManifestPath

        # Copy over manifest
        Write-BuildLog "Copying source manifest to target folder"
        Copy-Item -Path $subSourceManifestPath -Destination $subTargetVersionDirectory

        $updatedScriptsToProcess = @()
        $psm1UsingStatements = @()
        $attributesUsingStatements = @()
        $classesUsingStatements = @()
        foreach ($scope in @('Attributes', 'Classes', 'Private', 'Public')) {
            $gciPath = [System.IO.Path]::Combine($subSourceModuleDirectory, $scope)
            if (Test-Path $gciPath) {
                $toProcess = Get-ChildItem -Path $gciPath -Filter "*.ps1" -Recurse -File | Where-Object {$_.FullName -notlike "*Development Tools*"} | Sort-Object FullName
                if ($toProcess) {
                    $target = if ($scope -match '^(Attributes|Classes)$') {
                        New-Item -Path ([System.IO.Path]::Combine($subTargetVersionDirectory, "$scope.ps1")) -ItemType File -Force
                        $updatedScriptsToProcess += "$scope.ps1"
                    }
                    else {
                        $psm1
                    }
                    Write-BuildLog "Copying contents from files in source folder '$($scope)' to $($target.Name)"
                    $toProcess | ForEach-Object {
                        Write-BuildLog "Working on: $($_.FullName.Replace("$gciPath$([System.IO.Path]::DirectorySeparatorChar)",''))"
                        $content = Get-Content $_.FullName
                        if ($usingStatements = $content | Where-Object { $_ -match '^\s*using\s+(module|namespace|assembly)\s+\w+.*$' }) {
                            switch ($scope) {
                                Attributes {
                                    $attributesUsingStatements += $usingStatements
                                }
                                Classes {
                                    $classesUsingStatements += $usingStatements
                                }
                                default {
                                    $psm1UsingStatements += $usingStatements
                                }
                            }
                        }
                        $nonUsingStatements = ($content | Where-Object { $_ -notmatch '^\s*using\s+(module|namespace|assembly)\s+\w+.*$' }) -join "`n"
                        "$nonUsingStatements`n" | Add-Content -Path $target -Encoding UTF8
                        if ($scope -eq 'Public') {
                            $functionsToExport += $_.BaseName
                            "Export-ModuleMember -Function '$($_.BaseName)'`n" | Add-Content -Path $target -Encoding UTF8
                        }
                    }
                }
            }
        }
        switch ($true) {
            { $psm1UsingStatements.Count -ge 1 } {
                Write-BuildLog "Adding using statements to PSM1"
                $path = $psm1.FullName
                $cleanContents = (($psm1UsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
                if (-not (Test-Path $path)) {
                    New-Item -Path $path -ItemType File
                }
                $currentContents = Get-Content $path -Raw
                $newContents = @($cleanContents, $currentContents)
                ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
            }
            { $attributesUsingStatements.Count -ge 1 } {
                Write-BuildLog "Adding using statements to Attributes.ps1"
                $path = [System.IO.Path]::Combine($subTargetVersionDirectory, "Attributes.ps1")
                $cleanContents = (($attributesUsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
                if (-not (Test-Path $path)) {
                    New-Item -Path $path -ItemType File
                }
                $currentContents = Get-Content $path -Raw
                $newContents = @($cleanContents, $currentContents)
                ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
            }
            { $classesUsingStatements.Count -ge 1 } {
                Write-BuildLog "Adding using statements to Classes.ps1"
                $path = [System.IO.Path]::Combine($subTargetVersionDirectory, "Classes.ps1")
                $cleanContents = (($classesUsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
                if (-not (Test-Path $path)) {
                    New-Item -Path $path -ItemType File
                }
                $currentContents = Get-Content $path -Raw
                $newContents = @($cleanContents, $currentContents)
                ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
            }
        }
        if ($updatedScriptsToProcess.Count) {
            Update-Metadata -Path $subTargetManifestPath -PropertyName ScriptsToProcess -Value $updatedScriptsToProcess
        }

        Get-ChildItem -Path $subSourceModuleDirectory -Directory | Where-Object { $_.BaseName -notin @('Attributes','Classes', 'Private', 'Public') } | ForEach-Object {
            Write-BuildLog "Copying source folder to target: $($_.BaseName)"
            Copy-Item $_.FullName -Destination $subTargetVersionDirectory -Container -Recurse
        }

        # Update FunctionsToExport and AliasesToExport on manifest
        $params = @{
            Path = $subTargetManifestPath
        }
        if ($functionsToExport.Count) {
            Update-Metadata @params -PropertyName FunctionsToExport -Value ($functionsToExport | Sort-Object)
        }
        if ($aliasesToExport.Count) {
            Update-Metadata @params -PropertyName AliasesToExport -Value ($aliasesToExport | Sort-Object)
        }

        Write-BuildLog "Updating target manifest file with exports"

        Write-BuildLog "Reverting bumped source manifest version from '$NextModuleVersion' to '$ManifestVersion'"
        Update-Metadata -Path $subSourceManifestPath -PropertyName ModuleVersion -Value $ManifestVersion
        ([System.IO.File]::ReadAllText($subSourceManifestPath)).Trim() | Set-Content $subSourceManifestPath

        Write-BuildLog "Created compiled module at [$subTargetVersionDirectory]!"
        Write-BuildLog 'Output version directory contents:'
        Get-ChildItem $subTargetVersionDirectory | Format-Table -AutoSize
    }
}

# Synopsis: Compile the dotnet dll
Task BuildDotnet Init, {
    Write-BuildLog 'Compiling VaporShell.Core.dll'
    dotnet build .\VaporShell.Core\
    Get-Item ".\VaporShell.Core\obj\Debug\netstandard2.0\VaporShell.Core.dll" | Copy-Item -Destination $TargetVersionDirectory -Recurse -ErrorAction SilentlyContinue -Force
}

# Synopsis: Compiles module from source
Task BuildMain UpdateFromSpecification, {
    $functionsToExport = @()
    $aliasesToExport = @()
    Write-BuildLog 'Creating psm1...'
    $psm1 = New-Item -Path $TargetPSM1Path -ItemType File -Force

    $psm1Header = @(
        '[CmdletBinding()]'
        'Param ()'
        '$VaporshellPath = $PSScriptRoot'
        'if ($null -eq ([System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {$_.Location -match "VaporShell.Core.dll"})) {'
        '    Add-Type -Path "$VaporshellPath\VaporShell.Core.dll" -ReferencedAssemblies ([PowerShell].Assembly.Location)'
        '}'
    ) -join "`n"
    $psm1Header | Add-Content -Path $psm1 -Encoding UTF8

    if ($ManifestVersion -ne $NextModuleVersion) {
        Write-BuildLog "Bumping source manifest version from '$ManifestVersion' to '$NextModuleVersion' to prevent errors"
        Update-Metadata -Path $SourceManifestPath -PropertyName ModuleVersion -Value $NextModuleVersion
        ([System.IO.File]::ReadAllText($SourceManifestPath)).Trim() | Set-Content $SourceManifestPath
    }

    # Copy over manifest
    Write-BuildLog "Copying source manifest to target folder"
    Copy-Item -Path $SourceManifestPath -Destination $TargetVersionDirectory

    $updatedScriptsToProcess = @()
    $psm1UsingStatements = @()
    $attributesUsingStatements = @()
    $classesUsingStatements = @()
    foreach ($scope in @('Attributes', 'Classes', 'Private', 'Public')) {
        $gciPath = [System.IO.Path]::Combine($SourceModuleDirectory, $scope)
        if (Test-Path $gciPath) {
            $toProcess = Get-ChildItem -Path $gciPath -Filter "*.ps1" -Recurse -File | Where-Object {$_.FullName -notlike "*Development Tools*"} | Sort-Object FullName
            if ($toProcess) {
                $target = if ($scope -match '^(Attributes|Classes)$') {
                    New-Item -Path ([System.IO.Path]::Combine($TargetVersionDirectory, "$scope.ps1")) -ItemType File -Force
                    $updatedScriptsToProcess += "$scope.ps1"
                }
                else {
                    $psm1
                }
                Write-BuildLog "Copying contents from files in source folder '$($scope)' to $($target.Name)"
                $toProcess | ForEach-Object {
                    Write-BuildLog "Working on: $($_.FullName.Replace("$gciPath$([System.IO.Path]::DirectorySeparatorChar)",''))"
                    $content = Get-Content $_.FullName
                    if ($usingStatements = $content | Where-Object { $_ -match '^\s*using\s+(module|namespace|assembly)\s+\w+.*$' }) {
                        switch ($scope) {
                            Attributes {
                                $attributesUsingStatements += $usingStatements
                            }
                            Classes {
                                $classesUsingStatements += $usingStatements
                            }
                            default {
                                $psm1UsingStatements += $usingStatements
                            }
                        }
                    }
                    $nonUsingStatements = ($content | Where-Object { $_ -notmatch '^\s*using\s+(module|namespace|assembly)\s+\w+.*$' }) -join "`n"
                    "$nonUsingStatements`n" | Add-Content -Path $target -Encoding UTF8
                    if ($scope -eq 'Public') {
                        $functionsToExport += $_.BaseName
                        "Export-ModuleMember -Function '$($_.BaseName)'`n" | Add-Content -Path $target -Encoding UTF8
                    }
                }
            }
        }
    }
    switch ($true) {
        { $psm1UsingStatements.Count -ge 1 } {
            Write-BuildLog "Adding using statements to PSM1"
            $path = $psm1.FullName
            $cleanContents = (($psm1UsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
            if (-not (Test-Path $path)) {
                New-Item -Path $path -ItemType File
            }
            $currentContents = Get-Content $path -Raw
            $newContents = @($cleanContents, $currentContents)
            ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
        }
        { $attributesUsingStatements.Count -ge 1 } {
            Write-BuildLog "Adding using statements to Attributes.ps1"
            $path = [System.IO.Path]::Combine($TargetVersionDirectory, "Attributes.ps1")
            $cleanContents = (($attributesUsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
            if (-not (Test-Path $path)) {
                New-Item -Path $path -ItemType File
            }
            $currentContents = Get-Content $path -Raw
            $newContents = @($cleanContents, $currentContents)
            ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
        }
        { $classesUsingStatements.Count -ge 1 } {
            Write-BuildLog "Adding using statements to Classes.ps1"
            $path = [System.IO.Path]::Combine($TargetVersionDirectory, "Classes.ps1")
            $cleanContents = (($classesUsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
            if (-not (Test-Path $path)) {
                New-Item -Path $path -ItemType File
            }
            $currentContents = Get-Content $path -Raw
            $newContents = @($cleanContents, $currentContents)
            ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
        }
    }
    if ($updatedScriptsToProcess.Count) {
        Update-Metadata -Path $TargetManifestPath -PropertyName ScriptsToProcess -Value $updatedScriptsToProcess
    }

    Get-ChildItem -Path $SourceModuleDirectory -Directory | Where-Object { $_.BaseName -notin @('Attributes','Classes', 'Private', 'Public') } | ForEach-Object {
        Write-BuildLog "Copying source folder to target: $($_.BaseName)"
        Copy-Item $_.FullName -Destination $TargetVersionDirectory -Container -Recurse
    }

    Write-BuildLog 'Copying latest AWSSDK assembly dependencies to output path'
    Save-Module 'AWS.Tools.CloudFormation', 'AWS.Tools.S3' -Path $PSScriptRoot -Repository PSGallery -Force
    Get-Item 'AWS.Tools.*' | ForEach-Object {
        Get-ChildItem $_.FullName -Recurse -Filter 'AWSSDK.*.dll' | Copy-Item -Destination $TargetVersionDirectory -Recurse -ErrorAction SilentlyContinue
        Remove-Item $_.FullName -Recurse -Force
    }

    Write-BuildLog 'Copying DSL module'
    Copy-Item -Path "$SourceModuleDirectory\VaporShell.DSL.psm1" -Destination "$TargetVersionDirectory" -Recurse -ErrorAction SilentlyContinue

    Write-BuildLog 'Creating Variable hash'
    $varHash = @("@{")
    Get-Content -Path "$SourceModuleDirectory\Private\PseudoParams.txt" | ForEach-Object {
        $name = "_$(($_ -replace "::").Trim())"
        $varHash += "    '$name' = '$($_.Trim())'"
    }
    $varHash += "}"

    Write-BuildLog 'Creating Alias hash'
    $aliasHash = @("@{")
    Get-ChildItem "$SourceModuleDirectory\Public\Intrinsic Functions" | ForEach-Object {
        $name = ($_.BaseName).Replace('Add-', '')
        $aliasesToExport += $name
        $aliasHash += "    '$name' = '$($_.BaseName.Trim())'"
    }
    Get-ChildItem "$SourceModuleDirectory\Public\Condition Functions" | ForEach-Object {
        $name = ($_.BaseName).Replace('Add-', '')
        $aliasesToExport += $name
        $aliasHash += "    '$name' = '$($_.BaseName.Trim())'"
    }
    $aliasHash += "}"

    Write-BuildLog 'Setting remainder of PSM1 contents'
    $hashDefinitions = @(
        '$aliases = @()'
        "`$aliasHash = $($aliasHash -join "`n")"
        'foreach ($key in $aliasHash.Keys) {'
        '    New-Alias -Name `$key -Value $aliasHash[$key] -Force'
        '    $aliases += $key'
        '}'
        ''
        '$vars = @()'
        "`$varHash = $($varHash -join "`n")"
        'foreach ($key in $varHash.Keys) {'
        '    New-Variable -Name $key -Value $varHash[$key]'
        '    $vars += $key'
        '}'
        ''
        '$DSLModulePath = (Resolve-Path "$PSScriptRoot\VaporShell.DSL.psm1").Path'
        'Import-Module $DSLModulePath -DisableNameChecking -Force -Scope Global'
        ''
        'Export-ModuleMember -Variable $vars -Alias $aliases'
    ) -join "`n"
    $hashDefinitions | Add-Content -Path $psm1 -Encoding UTF8

    $aliases = @()
    Get-ChildItem "$SourceModuleDirectory\Public\Intrinsic Functions" | ForEach-Object {
        $aliases += ($_.BaseName).Replace('Add-', '')
    }
    Get-ChildItem "$SourceModuleDirectory\Public\Condition Functions" | ForEach-Object {
        $aliases += ($_.BaseName).Replace('Add-', '')
    }
    $vars = @()
    Get-Content -Path "$SourceModuleDirectory\Private\PseudoParams.txt" | ForEach-Object {
        $vars += "_$(($_ -replace "::").Trim())"
    }

    # Update FunctionsToExport and AliasesToExport on manifest
    $params = @{
        Path              = $TargetManifestPath
        FunctionsToExport = ($functionsToExport | Sort-Object)
        VariablesToExport = $vars
        AliasesToExport   = ($aliasesToExport | Sort-Object)
    }

    Write-BuildLog "Updating target manifest file with exports"
    Update-ModuleManifest @params

    if ($ManifestVersion -ne $NextModuleVersion) {
        Write-BuildLog "Reverting bumped source manifest version from '$NextModuleVersion' to '$ManifestVersion'"
        Update-Metadata -Path $SourceManifestPath -PropertyName ModuleVersion -Value $ManifestVersion
        ([System.IO.File]::ReadAllText($SourceManifestPath)).Trim() | Set-Content $SourceManifestPath
    }
    Write-BuildLog "Created compiled module at [$TargetVersionDirectory]!"
    Write-BuildLog 'Output version directory contents:'
    Get-ChildItem $TargetVersionDirectory | Format-Table -AutoSize
}

# Synopsis: Builds only the core components and submodules, excluding Resource Types and Resource Property Types
Task BuildCoreOnly Init, Clean, CleanNonCoreFunctions, {$Script:NoUpdate = $true}, BuildMain, BuildSubmodules, BuildDotnet

Task BuildMainClasses Init, {
    $updatedScriptsToProcess = @()
    $attributesUsingStatements = @()
    $classesUsingStatements = @()
    foreach ($scope in @('Attributes', 'Classes')) {
        $gciPath = [System.IO.Path]::Combine($SourceModuleDirectory, $scope)
        if (Test-Path $gciPath) {

            $target = New-Item -Path ([System.IO.Path]::Combine($TargetVersionDirectory, "$scope.ps1")) -ItemType File -Force
            $updatedScriptsToProcess += "$scope.ps1"

            Write-BuildLog "Copying contents from files in source folder '$($scope)' to $($target.Name)"
            Get-ChildItem -Path $gciPath -Filter "*.ps1" -Recurse -File | Sort-Object FullName | ForEach-Object {
                Write-BuildLog "Working on: $($_.FullName.Replace("$gciPath$([System.IO.Path]::DirectorySeparatorChar)",''))"
                $content = Get-Content $_.FullName
                if ($usingStatements = $content | Where-Object { $_ -match '^\s*using\s+(module|namespace|assembly)\s+\w+.*$' }) {
                    switch ($scope) {
                        Attributes {
                            $attributesUsingStatements += $usingStatements
                        }
                        Classes {
                            $classesUsingStatements += $usingStatements
                        }
                    }
                }
                $nonUsingStatements = ($content | Where-Object { $_ -notmatch '^\s*using\s+(module|namespace|assembly)\s+\w+.*$' }) -join "`n"
                "$nonUsingStatements`n" | Add-Content -Path $target -Encoding UTF8
            }
        }
    }
    switch ($true) {
        { $attributesUsingStatements.Count -ge 1 } {
            Write-BuildLog "Adding using statements to Attributes.ps1"
            $path = [System.IO.Path]::Combine($TargetVersionDirectory, "Attributes.ps1")
            $cleanContents = (($attributesUsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
            if (-not (Test-Path $path)) {
                New-Item -Path $path -ItemType File
            }
            $currentContents = Get-Content $path -Raw
            $newContents = @($cleanContents, $currentContents)
            ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
        }
        { $classesUsingStatements.Count -ge 1 } {
            Write-BuildLog "Adding using statements to Classes.ps1"
            $path = [System.IO.Path]::Combine($TargetVersionDirectory, "Classes.ps1")
            $cleanContents = (($classesUsingStatements | ForEach-Object { $_.Trim() }) | Sort-Object -Unique) -join "`n"
            if (-not (Test-Path $path)) {
                New-Item -Path $path -ItemType File
            }
            $currentContents = Get-Content $path -Raw
            $newContents = @($cleanContents, $currentContents)
            ($newContents -join "`n") | Set-Content $path -Encoding UTF8 -Force
        }
    }
    if ($updatedScriptsToProcess.Count) {
        Update-Metadata -Path $TargetManifestPath -PropertyName ScriptsToProcess -Value $updatedScriptsToProcess
    }
}

Task BuildClasses BuildMainClasses, BuildSubmodules

# Synopsis: Builds everything
Task Build  Init, Clean, BuildMain, BuildSubmodules, BuildDotnet

# Synopsis: Imports the newly compiled module
Task Import -If { Test-Path $TargetManifestPath } Init, {
    Import-Module -Name $TargetModuleDirectory -ErrorAction Stop
}

Task PesterBefore {
    if ($module = Get-Module $ModuleName) {
        Write-BuildLog "$ModuleName is currently imported. Removing module and cleaning up any leftover aliases"
        $module | Remove-Module -Force
        $aliases = @{ }
        $aliasPath = [System.IO.Path]::Combine($BuildRoot, $ModuleName, "$ModuleName.Aliases.ps1")
        if (Test-Path $aliasPath) {
            (. $aliasPath).Keys | ForEach-Object {
                if (Get-Alias "$_*") {
                    Remove-Alias -Name $_ -Force
                }
            }
        }
    }
    $testModules = @(
        @{
            Name           = 'Pester'
            MinimumVersion = '4.10.1'
        }
        @{
            Name           = 'Assert'
            MinimumVersion = '0.9.5'
        }
    )
    foreach ($testModule in $testModules) {
        Write-BuildLog "[$($testModule.Name)] Resolving"
        try {
            if ($imported = Get-Module $($testModule.Name)) {
                Write-BuildLog "[$($testModule.Name)] Removing imported module"
                $imported | Remove-Module
            }
            Import-Module @testModule
        }
        catch {
            Write-BuildLog "[$($testModule.Name)] Installing missing module"
            Install-Module @testModule
            Import-Module @testModule
        }
    }
}

# Synopsis: Run Pester tests only (no Clean/Compile)
Task Test Init, PesterBefore, {
    Set-Location -PassThru $TargetModuleDirectory
    Get-Module $ModuleName | Remove-Module $ModuleName -ErrorAction SilentlyContinue -Verbose:$false
    Import-Module -Name $TargetModuleDirectory -Force -Verbose:$false
    $pesterParams = @{
        OutputFormat = 'NUnitXml'
        OutputFile   = Join-Path $TargetDirectory "TestResults.xml"
        PassThru     = $true
        Path         = Join-Path $BuildRoot "Tests"
    }
    if ($global:ExcludeTag) {
        $pesterParams['ExcludeTag'] = $global:ExcludeTag
        Write-BuildLog "Invoking Pester and excluding tag(s) [$($global:ExcludeTag -join ', ')]..."
    }
    else {
        Write-BuildLog 'Invoking Pester...'
    }
    $testResults = Invoke-Pester @pesterParams
    Write-BuildLog 'Pester invocation complete!'
    if ($testResults.FailedCount -gt 0) {
        "`nTop-level results:"
        $testResults | Format-List
        "`nFailures only:"
        $testResults.TestResult | Where-Object { -not $_.Passed } | Format-List
        Write-BuildError 'One or more Pester tests failed. Build cannot continue!'
    }
}

# Synopsis: Run Pester tests for classes only (no Clean/Compile)
Task TestClasses Init, PesterBefore, {
    Set-Location -PassThru $TargetModuleDirectory
    Get-Module $ModuleName | Remove-Module $ModuleName -ErrorAction SilentlyContinue -Verbose:$false
    Import-Module -Name $TargetModuleDirectory -Force -Verbose:$false
    $pesterParams = @{
        OutputFormat = 'NUnitXml'
        OutputFile   = Join-Path $TargetDirectory "TestResultsClasses.xml"
        PassThru     = $true
        Path         = [System.IO.Path]::Combine($BuildRoot,"Tests","Class Tests")
    }
    if ($global:ExcludeTag) {
        $pesterParams['ExcludeTag'] = $global:ExcludeTag
        Write-BuildLog "Invoking Pester and excluding tag(s) [$($global:ExcludeTag -join ', ')]..."
    }
    else {
        Write-BuildLog 'Invoking Pester...'
    }
    $testResults = Invoke-Pester @pesterParams
    Write-BuildLog 'Pester invocation complete!'
    if ($testResults.FailedCount -gt 0) {
        "`nTop-level results:"
        $testResults | Format-List
        "`nFailures only:"
        $testResults.TestResult | Where-Object { -not $_.Passed } | Format-List
        Write-BuildError 'One or more Pester tests failed. Build cannot continue!'
    }
}

# Synopsis: Run PSScriptAnalyzer
Task Analyze Init, {
    $analysis = Invoke-ScriptAnalyzer -Path "$PSScriptRoot\$($env:BHProjectName)" -Recurse -Verbose:$false
    $errors = $analysis | Where-Object { $_.Severity -eq 'Error' }
    $warnings = $analysis | Where-Object { $_.Severity -eq 'Warning' }

    if (($errors.Count -eq 0) -and ($warnings.Count -eq 0)) {
        Write-BuildLog 'PSScriptAnalyzer passed without errors or warnings'
    }

    if (@($errors).Count -gt 0) {
        Write-Error -Message 'One or more Script Analyzer errors were found. Build cannot continue!'
        $errors | Format-Table
    }

    if (@($warnings).Count -gt 0) {
        Write-Warning -Message 'One or more Script Analyzer warnings were found. These should be corrected.'
        $warnings | Format-Table
    }
}

$psGalleryConditions = {
    -not [String]::IsNullOrEmpty($env:NugetApiKey) -and
    -not [String]::IsNullOrEmpty($NextModuleVersion) -and
    $env:BHBuildSystem -eq 'VSTS' -and
    ($env:BHCommitMessage -match '!deploy' -or $env:BUILD_REASON -eq 'Schedule') -and
    $env:BHBranchName -eq "master"
}
$gitHubConditions = {
    -not [String]::IsNullOrEmpty($env:GitHubPAT) -and
    -not [String]::IsNullOrEmpty($NextModuleVersion) -and
    $env:BHBuildSystem -eq 'VSTS' -and
    ($env:BHCommitMessage -match '!deploy' -or $env:BUILD_REASON -eq 'Schedule') -and
    $env:BHBranchName -eq "master"
}
$tweetConditions = {
    -not [String]::IsNullOrEmpty($env:TwitterAccessSecret) -and
    -not [String]::IsNullOrEmpty($env:TwitterAccessToken) -and
    -not [String]::IsNullOrEmpty($env:TwitterConsumerKey) -and
    -not [String]::IsNullOrEmpty($env:TwitterConsumerSecret) -and
    -not [String]::IsNullOrEmpty($NextModuleVersion) -and
    $env:BHBuildSystem -eq 'VSTS' -and
    ($env:BHCommitMessage -match '!deploy' -or $env:BUILD_REASON -eq 'Schedule') -and
    $env:BHBranchName -eq "master"
}

Task PublishToPSGallery -If $psGalleryConditions {
    Write-BuildLog "Publishing version [$($NextModuleVersion)] to PSGallery"
    Publish-Module -Path $TargetVersionDirectory -NuGetApiKey $env:NugetApiKey -Repository PSGallery
    Write-BuildLog "Deployment successful!"
}

Task BuildReleaseZips Init, {
    Write-BuildLog "Creating Release ZIPs..."
    $releaseZipPath = [System.IO.Path]::Combine($BuildRoot, 'ReleaseZips')
    if (-not (Test-Path $releaseZipPath)) {
        New-Item $releaseZipPath -ItemType Directory -Force
    }
    $zipPaths = @(
        @{
            ZipPath    = [System.IO.Path]::Combine($releaseZipPath, "$($ModuleName).zip")
            SourcePath = $TargetModuleDirectory
        }
    )
    Get-ChildItem $SourceAdditionalModuleDirectory -Directory | ForEach-Object {
        $zipPaths += @{
            ZipPath    = [System.IO.Path]::Combine($releaseZipPath, "$($_.BaseName).zip")
            SourcePath = [System.IO.Path]::Combine($TargetDirectory, $_.BaseName)
        }
    }
    foreach ($zip in $zipPaths) {
        if (Test-Path $zip.ZipPath) {
            Remove-Item $zip.ZipPath -Force
        }
        Add-Type -Assembly System.IO.Compression.FileSystem
        [System.IO.Compression.ZipFile]::CreateFromDirectory($zip.SourcePath, $zip.ZipPath)
        Get-Item $zip.ZipPath
    }
}

Task PublishToGitHub -If $gitHubConditions BuildReleaseZips, {
    $commitId = git rev-parse --verify HEAD

    Write-BuildLog "Publishing Release v$($NextModuleVersion) @ commit Id [$($commitId)] to GitHub..."

    $ReleaseNotes = . .\ci\GitHubReleaseNotes.ps1 -ModuleName $ModuleName -ModuleVersion $NextModuleVersion

    $zipPath = Get-ChildItem ([System.IO.Path]::Combine($BuildRoot, 'ReleaseZips')) -Filter '*.zip' | Select-Object -ExpandProperty FullName

    $gitHubParams = @{
        VersionNumber    = $NextModuleVersion.ToString()
        CommitId         = $commitId
        ReleaseNotes     = $ReleaseNotes
        GitHubUsername   = 'SCRT-HQ'
        GitHubRepository = $ModuleName
        GitHubApiKey     = $env:GitHubPAT
        Draft            = $false
    }
    if ($null -ne $zipPath) {
        $gitHubParams['ArtifactPath'] = $zipPath
    }
    Publish-GitHubRelease @gitHubParams
    Write-BuildLog "Release creation successful!"
}

Task PublishToTwitter -If $tweetConditions {
    if ($null -eq (Get-Module PoshTwit -ListAvailable)) {
        Write-BuildLog "Installing PoshTwit module"
        Install-Module PoshTwit -Scope CurrentUser -SkipPublisherCheck -AllowClobber -Repository PSGallery -Force
    }
    Import-Module PoshTwit -Verbose:$false
    Write-BuildLog "Publishing tweet about new release..."
    $manifest = Import-PowerShellDataFile -Path $TargetManifestPath
    $text = "#$($ModuleName) v$($NextModuleVersion) is now available on the #PSGallery! https://www.powershellgallery.com/packages/$($ModuleName)/$NextModuleVersion #PowerShell"
    $manifest.PrivateData.PSData.Tags | ForEach-Object {
        $text += " #$($_)"
    }
    if ($text.Length -gt 280) {
        Write-BuildLog "Trimming [$($text.Length - 280)] extra characters from tweet text to get to 280 character limit..."
        $text = $text.Substring(0, 280)
    }
    Write-BuildLog "Tweet text: $text"
    $publishTweetSplat = @{
        Tweet          = $text
        ConsumerSecret = $env:TwitterConsumerSecret
        ConsumerKey    = $env:TwitterConsumerKey
        AccessToken    = $env:TwitterAccessToken
        AccessSecret   = $env:TwitterAccessSecret
    }
    Publish-Tweet @publishTweetSplat
    Write-BuildLog "Tweet successful!"
}

Task Deploy Init, PublishToPSGallery, PublishToTwitter, PublishToGitHub
