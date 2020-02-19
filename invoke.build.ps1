
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
    $NoUpdate
)

task . Build

task Init {
    Import-Module Configuration
    $Script:SourceModuleDirectory = [System.IO.Path]::Combine($BuildRoot, $ModuleName)
    $Script:GalleryVersion = (Get-PSGalleryVersion $ModuleName).Version
    $Script:SourceManifestPath = Join-Path $SourceModuleDirectory "$($ModuleName).psd1"
    $Script:ManifestVersion = (Import-Metadata -Path $SourceManifestPath).ModuleVersion
    $Script:NextModuleVersion = Get-NextModuleVersion -GalleryVersion $GalleryVersion -ManifestVersion $ManifestVersion
    $Script:TargetDirectory = [System.IO.Path]::Combine($BuildRoot, 'BuildOutput')
    $Script:TargetModuleDirectory = [System.IO.Path]::Combine($TargetDirectory, $ModuleName)
    $Script:TargetVersionDirectory = [System.IO.Path]::Combine($TargetModuleDirectory, $NextModuleVersion)
    $Script:TargetManifestPath = [System.IO.Path]::Combine($TargetVersionDirectory, "$($ModuleName).psd1")
    $Script:TargetPSM1Path = [System.IO.Path]::Combine($TargetVersionDirectory, "$($ModuleName).psm1")
    Write-BuildLog "Build System Details:"
    @(
        ""
        "~~~~~ Summary ~~~~~"
        "In CI?              : $($IsCI -or (Test-Path Env:\TF_BUILD))"
        "Project             : $ModuleName"
        "Manifest Version    : $ManifestVersion"
        "Gallery Version     : $GalleryVersion"
        "Next Module Version : $NextModuleVersion"
        "Engine              : PowerShell $($PSVersionTable.PSVersion.ToString())"
        "Host OS             : $(if($PSVersionTable.PSVersion.Major -le 5 -or $IsWindows){"Windows"}elseif($IsLinux){"Linux"}elseif($IsMacOS){"macOS"}else{"[UNKNOWN]"})"
        "PWD                 : $PWD"
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
}

task Clean Init,{
    remove 'BuildOutput'
}

# Synopsis: Updates module functions before compilation
Task Update Clean, {
    Write-BuildLog 'Updating Resource and Property Type functions with current AWS spec sheet...'
    Get-ChildItem (Join-Path $PSScriptRoot 'ci') -Filter '*.ps1' | Where-Object { $_.BaseName -notmatch "(GitHubReleaseNotes|$(([RegEx]::Escape('https___gist.githubusercontent.com_scrthq'))))" } | ForEach-Object {
        . $_.FullName
    }
    Update-VSResourceFunctions
}

# Synopsis: Compiles module from source
Task Build Update, {
    $functionsToExport = @()
    $aliasesToExport = @()
    Write-BuildLog 'Creating psm1...'
    $psm1 = New-Item -Path $TargetPSM1Path -ItemType File -Force

    $psm1Header = @(
        '[CmdletBinding()]'
        'Param ('
        '    # This no longer does anything as of v2.6.0, leaving for backwards compatiblity'
        '    [parameter(Position=0)]'
        '    $ForceDotSource = $false'
        ')'
        '$VaporshellPath = $PSScriptRoot'
    ) -join "`n"
    $psm1Header | Add-Content -Path $psm1 -Encoding UTF8

    foreach ($scope in @('Classes','Private','Public')) {
        $gciPath = [System.IO.Path]::Combine($SourceModuleDirectory,$scope)
        if (Test-Path $gciPath) {
            Write-BuildLog "Copying contents from files in source folder to PSM1: $($scope)"
            Get-ChildItem -Path $gciPath -Filter "*.ps1" -Recurse -File | Where-Object {
                $_.Name -ne 'PseudoParams.txt' -and
                $_.FullName -notlike "*Development Tools*"
            } | ForEach-Object {
                Write-BuildLog "Working on: $($_.FullName.Replace("$gciPath\",''))"
                "$(Get-Content $_.FullName -Raw)`n" | Add-Content -Path $psm1 -Encoding UTF8
                if ($scope -eq 'Public') {
                    $functionsToExport += $_.BaseName
                    "Export-ModuleMember -Function '$($_.BaseName)'`n" | Add-Content -Path $psm1 -Encoding UTF8
                }
            }
        }
    }

    Get-ChildItem -Path $SourceModuleDirectory -Directory | Where-Object {$_.BaseName -notin @('Classes','Private','Public')} | ForEach-Object {
        Write-BuildLog "Copying source folder to target: $($_.BaseName)"
        Copy-Item $_.FullName -Destination $TargetVersionDirectory -Container -Recurse
    }

    if ($ManifestVersion -ne $NextModuleVersion) {
        Write-BuildLog "Bumping source manifest version from '$ManifestVersion' to '$NextModuleVersion' to prevent errors"
        Update-Metadata -Path $SourceManifestPath -PropertyName ModuleVersion -Value $NextModuleVersion
        ([System.IO.File]::ReadAllText($SourceManifestPath)).Trim() | Set-Content $SourceManifestPath
    }

    Write-BuildLog 'Copying latest AWSSDK assembly dependencies to output path'
    Save-Module 'AWS.Tools.CloudFormation','AWS.Tools.S3' -Path $PSScriptRoot -Repository PSGallery -Force
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

    '    Setting remainder of PSM1 contents...'
    @"

# Load AWS .NET SDK if not already loaded
@(
    'Common',
    'Core',
    'CloudFormation',
    'S3'
) | ForEach-Object {
    `$assemblyName = "AWSSDK.`$(`$_).dll"
    if (!([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {`$_.Location -like "*`$(`$assemblyName)"})) {
        Get-ChildItem `$Script:VaporshellPath -Filter "*`$(`$assemblyName)" | ForEach-Object {
            [System.Reflection.Assembly]::LoadFrom("`$(`$_.FullName)") | Out-Null
        }
    }
}

`$aliases = @()
`$aliasHash = $($aliasHash -join "`n")
foreach (`$key in `$aliasHash.Keys) {
    New-Alias -Name `$key -Value `$aliasHash[`$key] -Force
    `$aliases += `$key
}

`$vars = @()
`$varHash = $($varHash -join "`n")
foreach (`$key in `$varHash.Keys) {
    New-Variable -Name `$key -Value `$varHash[`$key]
    `$vars += `$key
}

`$DSLModulePath = (Resolve-Path "`$PSScriptRoot\VaporShell.DSL.psm1").Path
Import-Module `$DSLModulePath -DisableNameChecking -Force -Scope Global

Export-ModuleMember -Variable `$vars -Alias `$aliases
"@ | Add-Content -Path $psm1 -Encoding UTF8

    # Copy over manifest
    Write-BuildLog "Copying source manifest to target folder"
    Copy-Item -Path $SourceManifestPath -Destination $TargetVersionDirectory

    Write-BuildLog 'Updating manifest'
    $dslModuleName = "VaporShell.DSL"
    Import-Module "$SourceModuleDirectory\$($dslModuleName).psm1" -DisableNameChecking -Force -Verbose:$false
    $dslFunctions = (Get-Command -Module $dslModuleName).Name
    Remove-Module $dslModuleName -Force -Verbose:$false -ErrorAction SilentlyContinue

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
        Path = $TargetManifestPath
        FunctionsToExport = ($functionsToExport | Sort-Object)
        VariablesToExport = $vars
        AliasesToExport = ($aliasesToExport | Sort-Object)
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
    Get-ChildItem $TargetVersionDirectory | Format-Table -Autosize
}

# Synopsis: Imports the newly compiled module
task Import -If {Test-Path $TargetManifestPath} Build,{
    Import-Module -Name $TargetModuleDirectory -ErrorAction Stop
}

$pesterScriptBlock = {
    if ($module = Get-Module $ModuleName) {
        Write-BuildLog "$ModuleName is currently imported. Removing module and cleaning up any leftover aliases"
        $module | Remove-Module -Force
        $aliases = @{}
        $aliasPath = [System.IO.Path]::Combine($BuildRoot,$ModuleName,"$ModuleName.Aliases.ps1")
        if (Test-Path $aliasPath) {
            (. $aliasPath).Keys | ForEach-Object {
                if (Get-Alias "$_*") {
                    Remove-Alias -Name $_ -Force
                }
            }
        }
    }
    $parameters = @{
        Name           = 'Pester'
        MinimumVersion = '4.8.1'
    }
    Write-BuildLog "[$($parameters.Name)] Resolving"
    try {
        if ($imported = Get-Module $($parameters.Name)) {
            Write-BuildLog "[$($parameters.Name)] Removing imported module"
            $imported | Remove-Module
        }
        Import-Module @parameters
    }
    catch {
        Write-BuildLog "[$($parameters.Name)] Installing missing module"
        Install-Module @parameters
        Import-Module @parameters
    }
    Push-Location
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
        $testResults.TestResult | Where-Object {-not $_.Passed} | Format-List
        Write-BuildError 'One or more Pester tests failed. Build cannot continue!'
    }
}

# Synopsis: Run Pester tests
Task Full Init, Build, Import, $pesterScriptBlock

# Synopsis: Run Pester tests only (no Clean/Compile)
Task Test Init, $pesterScriptBlock

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

task PublishToPSGallery -If $psGalleryConditions {
    Write-BuildLog "Publishing version [$($NextModuleVersion)] to PSGallery"
    Publish-Module -Path $TargetVersionDirectory -NuGetApiKey $env:NugetApiKey -Repository PSGallery
    Write-BuildLog "Deployment successful!"
}

task PublishToGitHub -If $gitHubConditions {
    $commitId = git rev-parse --verify HEAD
    Write-BuildLog "Creating Release ZIP..."
    $zipPath = [System.IO.Path]::Combine($BuildRoot,"$($ModuleName).zip")
    if (Test-Path $zipPath) {
        Remove-Item $zipPath -Force
    }
    Add-Type -Assembly System.IO.Compression.FileSystem
    [System.IO.Compression.ZipFile]::CreateFromDirectory($TargetModuleDirectory,$zipPath)
    Write-BuildLog "Publishing Release v$($NextModuleVersion) @ commit Id [$($commitId)] to GitHub..."

    $ReleaseNotes = . .\ci\GitHubReleaseNotes.ps1 -ModuleName $ModuleName -ModuleVersion $NextModuleVersion

    $gitHubParams = @{
        VersionNumber    = $NextModuleVersion.ToString()
        CommitId         = $commitId
        ReleaseNotes     = $ReleaseNotes
        ArtifactPath     = $zipPath
        GitHubUsername   = 'scrthq'
        GitHubRepository = $ModuleName
        GitHubApiKey     = $env:GitHubPAT
        Draft            = $false
    }
    Publish-GitHubRelease @gitHubParams
    Write-BuildLog "Release creation successful!"
}

task PublishToTwitter -If $tweetConditions {
    if ($null -eq (Get-Module PoshTwit -ListAvailable)) {
        Write-BuildLog "Installing PoshTwit module"
        Install-Module PoshTwit -Scope CurrentUser -SkipPublisherCheck -AllowClobber -Repository PSGallery -Force
    }
    Import-Module PoshTwit -Verbose:$false
    Write-BuildLog "Publishing tweet about new release..."
    $manifest = Import-PowerShellDataFile -Path $TargetManifestPath
    $text = "#$($ModuleName) v$($NextModuleVersion) is now available on the #PSGallery! https://www.powershellgallery.com/packages/$($ModuleName)/$NextModuleVersion #PowerShell"
    $manifest.PrivateData.PSData.Tags | Foreach-Object {
        $text += " #$($_)"
    }
    if ($text.Length -gt 280) {
        Write-BuildLog "Trimming [$($text.Length - 280)] extra characters from tweet text to get to 280 character limit..."
        $text = $text.Substring(0,280)
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

task Deploy Init,PublishToPSGallery,PublishToGitHub,PublishToTwitter
