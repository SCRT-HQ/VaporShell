# PSake makes variables declared here available in other scriptblocks
# Init some things
Properties {
    # Find the build folder based on build system
    $ProjectRoot = $ENV:BHProjectPath
    if (-not $ProjectRoot) {
        if ($pwd.Path -like "*ci*") {
            Set-Location ..
        }
        $ProjectRoot = $pwd.Path
    }
    $moduleName = "VaporShell"
    $sut = $env:BHModulePath
    $tests = "$projectRoot\Tests"
    $Timestamp = Get-Date -Uformat "%Y%m%d-%H%M%S"
    $PSVersion = $PSVersionTable.PSVersion.Major
    $TestFile = "TestResults_PS$PSVersion`_$TimeStamp.xml"
    $outputDir = Join-Path -Path $projectRoot -ChildPath 'out'
    $outputModDir = Join-Path -Path $outputDir -ChildPath $env:BHProjectName
    $manifest = Import-PowerShellDataFile -Path $env:BHPSModuleManifest
    $outputModVerDir = Join-Path -Path $outputModDir -ChildPath $manifest.ModuleVersion
    $pathSeperator = [IO.Path]::PathSeparator
    $Verbose = @{}
    if ($ENV:BHCommitMessage -match "!verbose") {
        $Verbose = @{Verbose = $True}
    }
}

#Task Default -Depends Init,Test,Build,Deploy
task default -depends Pester

task Init {
    Set-Location $ProjectRoot
    "Build System Details:"
    Get-Item ENV:BH*
    "`n"

    "  Installing the latest version of Pester"
    Install-Module -Name Pester -Repository PSGallery -Scope CurrentUser -AllowClobber -SkipPublisherCheck -Confirm:$false -ErrorAction Stop -Force -Verbose:$false
    Import-Module -Name Pester -Verbose:$false -Force
    "  Installing the latest version of PSScriptAnalyzer"
    Install-Module -Name PSScriptAnalyzer -Repository PSGallery -Scope CurrentUser -AllowClobber -SkipPublisherCheck -Confirm:$false -ErrorAction Stop -Force -Verbose:$false
    Import-Module -Name PSScriptAnalyzer -Verbose:$false -Force
    if ($env:BHBuildSystem -eq 'AppVeyor' -and $PSVersionTable.PSVersion.Major -lt 6) {
        "  Installing the latest version of Coveralls"
        Install-Module Coveralls -Repository PSGallery -Scope CurrentUser -ErrorAction Stop -Force -Confirm:$false -Verbose:$false
        Import-Module Coveralls -Force -Verbose:$false
    }
    if ($env:BHProjectName -cne $moduleName) {
        $env:BHProjectName = $moduleName
    }
} -description 'Initialize build environment'

task Update -depends Init {
    '    Updating Resource and Property Type functions with current AWS spec sheet...'
    Remove-Module $($env:BHProjectName) -ErrorAction SilentlyContinue -Force -Verbose:$false
    Import-Module $env:BHPSModuleManifest -Force -Verbose:$false
    Update-VSResourceFunctions
    Remove-Module $($env:BHProjectName) -Force -Verbose:$false
} -description 'Updates module functions before compilation'

task Clean -depends Update {
    Remove-Module -Name $env:BHProjectName -Force -ErrorAction SilentlyContinue -Verbose:$false

    if (Test-Path -Path $outputDir) {
        Get-ChildItem -Path $outputDir -Recurse -File | Where-Object {$_.FullName -notlike "*dll"} | Remove-Item -Force -Recurse
    } else {
        New-Item -Path $outputDir -ItemType Directory > $null
    }
    "    Cleaned previous output directory [$outputDir]"
} -description 'Cleans module output directory'

task Compile -depends Clean {
    $functionsToExport = @()
    New-Item -Path $outputModDir -ItemType Directory -ErrorAction SilentlyContinue > $null
    New-Item -Path $outputModVerDir -ItemType Directory -ErrorAction SilentlyContinue > $null

    # Append items to psm1
    '    Creating psm1...'
@'
Param(
    # This no longer does anything as of v2.6.0, leaving for backwards compatiblity
    [parameter(Position=0)]
    $ForceDotSource = $false
)
$VaporshellPath = $PSScriptRoot
'@ | Set-Content -Path (Join-Path -Path $outputModVerDir -ChildPath "$($ENV:BHProjectName).psm1") -Encoding UTF8 -Force
    $psm1 = Get-Item (Join-Path -Path $outputModVerDir -ChildPath "$($ENV:BHProjectName).psm1")

    '    Adding Private functions to psm1...'
    Get-ChildItem -Path (Join-Path -Path $sut -ChildPath 'Private') -Recurse -File | Where-Object {$_.Name -ne 'PseudoParams.txt'} | ForEach-Object {
        "$(Get-Content $_.FullName -Raw)`n" | Add-Content -Path $psm1 -Encoding UTF8
    }
    '    Adding Public functions to psm1...'
    Get-ChildItem -Path (Join-Path -Path $sut -ChildPath 'Public') -Recurse -File | Where-Object {$_.FullName -notlike "*Development Tools*"} | ForEach-Object {
        "$(Get-Content $_.FullName -Raw)`nExport-ModuleMember -Function '$($_.BaseName)'`n" | Add-Content -Path $psm1 -Encoding UTF8
        $functionsToExport += $_.BaseName
    }

    '    Copying bin path...'
    New-Item -Path "$outputModVerDir\bin" -ItemType Directory -ErrorAction SilentlyContinue > $null
    Copy-Item -Path "$sut\bin\*" -Destination "$outputModVerDir\bin" -Recurse -ErrorAction SilentlyContinue

    '    Copying DSL module...'
    New-Item -Path "$outputModVerDir\DSL" -ItemType Directory -ErrorAction SilentlyContinue > $null
    Copy-Item -Path "$sut\DSL\*" -Destination "$outputModVerDir\DSL" -Recurse -ErrorAction SilentlyContinue

    '    Creating Variable hash...'
    $varHash = @("@{")
    Get-Content -Path "$($env:BHPSModulePath)\Private\PseudoParams.txt" | ForEach-Object {
        $name = "_$(($_ -replace "::").Trim())"
        $varHash += "    '$name' = '$($_.Trim())'"
    }
    $varHash += "}"

    '    Creating Alias hash...'
    $aliasHash = @("@{")
    Get-ChildItem "$($env:BHPSModulePath)\Public\Intrinsic Functions" | ForEach-Object {
        $name = ($_.BaseName).Replace('Add-','')
        $aliasHash += "    '$name' = '$($_.BaseName.Trim())'"
    }
    Get-ChildItem "$($env:BHPSModulePath)\Public\Condition Functions" | ForEach-Object {
        $name = ($_.BaseName).Replace('Add-','')
        $aliasHash += "    '$name' = '$($_.BaseName.Trim())'"
    }
    $aliasHash += "}"

    '    Setting remainder of PSM1 contents...'
@"

# Load AWS .NET SDK if not already loaded
if (!([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {`$_.Location -like "*AWSSDK.CloudFormation.dll"})) {
    if (`$IsCoreCLR) {
        Write-Verbose "Loading AWS SDK for *NetCore*!"
        `$sdkPath = (Join-Path `$Script:VaporshellPath "bin\NetCore" -Resolve)
    }
    else {
        Write-Verbose "Loading AWS SDK for *Net45*!"
        `$sdkPath = (Join-Path `$Script:VaporshellPath "bin\Net45" -Resolve)
    }
    Get-ChildItem `$sdkPath -Filter "*.dll" | ForEach-Object {
        [reflection.assembly]::LoadFrom("`$(`$_.FullName)") | Out-Null
    }
}

`$aliases = @()
`$aliasHash = $($aliasHash -join "`n")
foreach (`$key in `$varHash.Keys) {
    New-Alias -Name `$key -Value `$aliasHash[`$key] -Force
    `$aliases += `$key
}

`$vars = @()
`$varHash = $($varHash -join "`n")
foreach (`$key in `$varHash.Keys) {
    New-Variable -Name `$key -Value `$varHash[`$key]
    `$vars += `$key
}

`$DSLModulePath = (Resolve-Path "`$PSScriptRoot\DSL\VaporShell.DSL.psm1").Path
Import-Module `$DSLModulePath -DisableNameChecking -Force

Export-ModuleMember -Function (Get-Command -Module VaporShell.DSL).Name -Variable `$vars -Alias `$aliases
"@ | Add-Content -Path $psm1 -Encoding UTF8

    '    Copying manifest...'
    Copy-Item -Path $env:BHPSModuleManifest -Destination $outputModVerDir

    '    Updating manifest...'
    $dslModuleName = "VaporShell.DSL"
    Import-Module "$($env:BHPSModulePath)\DSL\$($dslModuleName).psm1" -DisableNameChecking -Force -Verbose:$false
    $dslFunctions = (Get-Command -Module $dslModuleName).Name
    Remove-Module $dslModuleName -Force -Verbose:$false -ErrorAction SilentlyContinue

    $aliases = @()
    Get-ChildItem "$($env:BHPSModulePath)\Public\Intrinsic Functions" | ForEach-Object {
        $aliases += ($_.BaseName).Replace('Add-','')
    }
    Get-ChildItem "$($env:BHPSModulePath)\Public\Condition Functions" | ForEach-Object {
        $aliases += ($_.BaseName).Replace('Add-','')
    }
    $vars = @()
    Get-Content -Path "$($env:BHPSModulePath)\Private\PseudoParams.txt" | ForEach-Object {
        $vars += "_$(($_ -replace "::").Trim())"
    }

    Update-ModuleManifest -Path (Get-ChildItem $outputModVerDir | Where-Object {$_.Name -eq "$($env:BHProjectName).psd1"}).FullName -FunctionsToExport (($functionsToExport + $dslFunctions) | Sort-Object) -AliasesToExport ($aliases | Sort-Object) -VariablesToExport $vars

    if ((Get-ChildItem $outputModVerDir | Where-Object {$_.Name -eq "$($env:BHProjectName).psd1"}).BaseName -cne $env:BHProjectName) {
        '    Renaming manifest to correct casing...'
        Rename-Item (Join-Path $outputModVerDir "$($env:BHProjectName).psd1") -NewName "$($env:BHProjectName).psd1" -Force
    }
    "    Created compiled module at [$outputModDir]!"
    '    Output version directory contents:'
    Get-ChildItem $outputModVerDir | Select-Object Mode,Length,Name | Format-Table -Autosize
} -description 'Compiles module from source'

$pesterScriptBlock = {
    Push-Location
    Set-Location -PassThru $outputModDir
    if(-not $ENV:BHProjectPath) {
        Set-BuildEnvironment -Path $PSScriptRoot\..
    }

    $origModulePath = $env:PSModulePath
    if ( $env:PSModulePath.split($pathSeperator) -notcontains $outputDir ) {
        $env:PSModulePath = ($outputDir + $pathSeperator + $origModulePath)
    }

    Remove-Module $ENV:BHProjectName -ErrorAction SilentlyContinue -Verbose:$false
    Import-Module -Name $outputModDir -Force -Verbose:$false
    $testResultsXml = Join-Path -Path $outputDir -ChildPath $TestFile
    $coverage = @{}
    if ($PSVersionTable.PSVersion.Major -lt 6) {
        $coveredFunctions = @()
        "$ProjectRoot\Vaporshell\Public\Condition Functions\*","$ProjectRoot\Vaporshell\Public\Intrinsic Functions\*","$ProjectRoot\Vaporshell\Public\Primary Functions\*","$ProjectRoot\Vaporshell\Public\Transform\*","$ProjectRoot\Vaporshell\Public\*-Vaporshell.ps1" | Foreach-Object {
            foreach ($item in (Get-Item $_)) {
                $coveredFunctions += @{
                    Path = (Join-Path $outputModVerDir "$($env:BHProjectName).psm1")
                    Function = $item.BaseName
                }
            }
        }
        # Commented out due to extra time this takes when running against the compiled module
        # $coverage['CodeCoverage'] = $coveredFunctions
    }
    '    Invoking Pester...'
    $testResults = Invoke-Pester -Path $tests -PassThru -OutputFile $testResultsXml -OutputFormat NUnitXml @coverage
    '    Pester invocation complete!'
    # Upload test artifacts to AppVeyor
    If ($env:APPVEYOR) {
        (New-Object 'System.Net.WebClient').UploadFile(
            ([Uri]"https://ci.appveyor.com/api/testresults/nunit/$($env:APPVEYOR_JOB_ID)"),
            $testResultsXml
        )
        if ($PSVersionTable.PSVersion.Major -lt 6 -and $null -ne $env:Coveralls -and $coverage.Keys -contains 'CodeCoverage') {
            Write-Verbose "Uploading Code Coverage to Coveralls"
            $coverage = Format-Coverage -PesterResults $TestResults -CoverallsApiToken $env:Coveralls -BranchName $ENV:APPVEYOR_REPO_BRANCH -Verbose
            Publish-Coverage -Coverage $coverage -Verbose
        }
    }
    Remove-Item $testResultsXml -Force -ErrorAction SilentlyContinue

    if ($testResults.FailedCount -gt 0) {
        $testResults | Format-List
        Write-Error -Message 'One or more Pester tests failed. Build cannot continue!'
    }
    Pop-Location
    $env:PSModulePath = $origModulePath
}

task Pester -Depends Compile $pesterScriptBlock -description 'Run Pester tests'

task PesterOnly -Depends Init $pesterScriptBlock -description 'Run Pester tests only (no Clean/Compile)'

task Analyze -Depends Pester {
    $analysis = Invoke-ScriptAnalyzer -Path "$PSScriptRoot\$($env:BHProjectName)" -Recurse -Verbose:$false
    $errors = $analysis | Where-Object {$_.Severity -eq 'Error'}
    $warnings = $analysis | Where-Object {$_.Severity -eq 'Warning'}

    if (($errors.Count -eq 0) -and ($warnings.Count -eq 0)) {
        '    PSScriptAnalyzer passed without errors or warnings'
    }

    if (@($errors).Count -gt 0) {
        Write-Error -Message 'One or more Script Analyzer errors were found. Build cannot continue!'
        $errors | Format-Table
    }

    if (@($warnings).Count -gt 0) {
        Write-Warning -Message 'One or more Script Analyzer warnings were found. These should be corrected.'
        $warnings | Format-Table
    }
} -description 'Run PSScriptAnalyzer'

Task Deploy -Depends Analyze {
    if ($env:BHBuildSystem -eq 'AppVeyor' -and $env:BHCommitMessage -match '!deploy' -and $env:BHBranchName -eq "master") {
        # Load the module, read the exported functions, update the psd1 FunctionsToExport
        $commParsed = $env:BHCommitMessage | Select-String -Pattern '\sv\d\.\d\.\d\s'
        if ($commParsed) {
            $commitVer = $commParsed.Matches.Value.Trim().Replace('v','')
        }
        $curVer = (Get-Module $env:BHProjectName).Version
        $nextGalVer = Get-NextNugetPackageVersion -Name $env:BHProjectName -PackageSourceUrl 'https://www.powershellgallery.com/api/v2/'

        $versionToDeploy = if ($commitVer -and ([System.Version]$commitVer -lt $nextGalVer)) {
            Write-Host -ForegroundColor Yellow "Version in commit message is $commitVer, which is less than the next Gallery version and would result in an error. Possible duplicate deployment build, skipping module bump and negating deployment"
            $env:BHCommitMessage = $env:BHCommitMessage.Replace('!deploy','')
            $null
        }
        elseif ($commitVer -and ([System.Version]$commitVer -gt $nextGalVer)) {
            Write-Host -ForegroundColor Green "Module version to deploy: $commitVer [from commit message]"
            [System.Version]$commitVer
        }
        elseif ($curVer -ge $nextGalVer) {
            Write-Host -ForegroundColor Green "Module version to deploy: $curVer [from manifest]"
            $curVer
        }
        elseif ($env:BHCommitMessage -match '!hotfix') {
            Write-Host -ForegroundColor Green "Module version to deploy: $nextGalVer [commit message match '!hotfix']"
            $nextGalVer
        }
        elseif ($env:BHCommitMessage -match '!minor') {
            $minorVers = [System.Version]("{0}.{1}.{2}" -f $nextGalVer.Major,([int]$nextGalVer.Minor + 1),0)
            Write-Host -ForegroundColor Green "Module version to deploy: $minorVers [commit message match '!minor']"
            $minorVers
        }
        elseif ($env:BHCommitMessage -match '!major') {
            $majorVers = [System.Version]("{0}.{1}.{2}" -f ([int]$nextGalVer.Major + 1),0,0)
            Write-Host -ForegroundColor Green "Module version to deploy: $majorVers [commit message match '!major']"
            $majorVers
        }
        else {
            Write-Host -ForegroundColor Green "Module version to deploy: $nextGalVer [PSGallery next version]"
            $nextGalVer
        }
        # Bump the module version
        if ($versionToDeploy) {
            if(
                $env:BHProjectName -and $env:BHProjectName.Count -eq 1 -and
                $env:BHBuildSystem -eq 'AppVeyor' -and
                $env:BHBranchName -eq "master" -and
                $env:BHCommitMessage -match '!deploy' -and
                $env:APPVEYOR_BUILD_WORKER_IMAGE -eq 'Visual Studio 2017' -and
                $env:APPVEYOR_PULL_REQUEST_NUMBER -eq $null
            ) {
                Update-Metadata -Path (Join-Path $outputModVerDir "$($env:BHProjectName).psd1") -PropertyName ModuleVersion -Value $versionToDeploy
                "    Publishing version [$($versionToDeploy)] to PSGallery..."
                Publish-Module -Path $outputModVerDir -NuGetApiKey $env:NugetApiKey -Repository PSGallery
            }
            else {
                "    Skipping deployment: To deploy, ensure that...`n" +
                "      * You are building in AppVeyor (Current: $ENV:BHBuildSystem)`n" +
                "      * You are committing to the master branch (Current: $ENV:BHBranchName) `n" +
                "      * You are not building a Pull Request (Current: $ENV:APPVEYOR_PULL_REQUEST_NUMBER) `n" +
                "      * Your commit message includes !deploy (Current: $ENV:BHCommitMessage) `n" +
                "      * Your build image is Visual Studio 2017 (Current: $ENV:APPVEYOR_BUILD_WORKER_IMAGE)" |
                    Write-Host
            }
        }
        else {
            "    No module version matched! Deployment skipped"
        }

    }
    else {
        "    Build system is not AppVeyor, commit message does not contain '!deploy' and/or branch is not 'master'!`n    Deployment skipped"
    }
} -description 'Deploy module to PSGallery'
