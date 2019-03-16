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
    $buildConfiguration = "Release"
    $moduleName = "VaporShell"
    $sut = $env:BHModulePath
    $tests = "$projectRoot\Tests"
    $Timestamp = Get-Date -Uformat "%Y%m%d-%H%M%S"
    $PSVersion = $PSVersionTable.PSVersion.ToString()
    $TestFile = "TestResults_PS$PSVersion`_$TimeStamp.xml"
    $outputDir = $env:BHBuildOutput
    $outputModDir = Join-Path -Path $outputDir -ChildPath $env:BHProjectName
    $manifest = Import-PowerShellDataFile -Path $env:BHPSModuleManifest
    $outputModVerDir = Join-Path -Path $outputModDir -ChildPath $manifest.ModuleVersion
    $pathSeperator = [IO.Path]::PathSeparator
    $Verbose = @{}
    if ($ENV:BHCommitMessage -match "!verbose") {
        $Verbose = @{Verbose = $True}
    }
}

# Dot-source all helper scripts/functions in the ci folder
Get-ChildItem (Join-Path $PSScriptRoot "ci") | ForEach-Object {. $_.FullName}

Set-BuildVariables

#Task Default -Depends Init,Test,Build,Deploy
task default -depends Pester

FormatTaskName (Get-PsakeTaskSectionFormatter)

task Init {
    Set-Location $ProjectRoot
    Write-BuildLog "Build System Details:"
    Write-BuildLog "$((Get-ChildItem Env: | Where-Object {$_.Name -match "^(BUILD_|SYSTEM_|BH)"} | Sort-Object Name | Format-Table Name,Value -AutoSize | Out-String).Trim())"
    if ($env:BHProjectName -cne $moduleName) {
        $env:BHProjectName = $moduleName
    }
} -description 'Initialize build environment'

task Update -depends Init {
    Write-BuildLog 'Updating Resource and Property Type functions with current AWS spec sheet...'

    Invoke-CommandWithLog {Remove-Module $env:BHProjectName -ErrorAction SilentlyContinue -Force -Verbose:$false}
    Invoke-CommandWithLog {Import-Module $env:BHPSModuleManifest -Force -Verbose:$false}
    Invoke-CommandWithLog {}
    Invoke-CommandWithLog {Update-VSResourceFunctions -Verbose}
    Invoke-CommandWithLog {Remove-Module $env:BHProjectName -Force -Verbose:$false}
} -description 'Updates module functions before compilation'

task Clean -depends Init {
    Invoke-CommandWithLog {Remove-Module -Name $env:BHProjectName -Force -ErrorAction SilentlyContinue -Verbose:$false}
    if (Test-Path -Path $outputDir) {
        $allClean = $true
        Get-ChildItem -Path $outputDir -Recurse -File | ForEach-Object {
            $item = $_
            try {
                Write-BuildLog -Verbose "Removing item: $($item.FullName)"
                $item | Remove-Item -Force
            }
            catch {
                $err = $_
                Write-BuildWarning "[Skipped]`n`t [$($item.FullName)]`n`t Error: $($err.Exception.Message)"
                $allClean = $false
            }
        }
        if ($allClean) {
            Write-BuildLog "All files successfully cleaned! Removing folder structure now"
            if (Test-Path $outputModDir) {
                Write-BuildLog -Verbose "Removing item: $($item.FullName)"
                Invoke-CommandWithLog {
                    Get-ChildItem $outputModDir -Recurse | ForEach-Object {
                        $item = $_
                        try {
                            Write-BuildLog -Verbose "Removing item: $($item.FullName)"
                            $item | Remove-Item -Recurse -Force
                        }
                        catch {}
                    }
                }
            }
        }
    } else {
        Invoke-CommandWithLog {New-Item -Path $outputDir -ItemType Directory}
    }
    Write-BuildLog "Cleaned previous output directory [$outputDir]"
} -description 'Cleans module output directory'

task CompilePowerShell -depends Clean {
    $functionsToExport = @()
    Write-BuildLog -Verbose 'Creating BuildOutput folders...'
    New-Item -Path $outputModDir -ItemType Directory -ErrorAction SilentlyContinue > $null
    New-Item -Path $outputModVerDir -ItemType Directory -ErrorAction SilentlyContinue > $null

    # Append items to psm1
    Write-BuildLog -Verbose 'Creating psm1...'
@'
Param(
    # This no longer does anything as of v2.6.0, leaving for backwards compatiblity
    [parameter(Position=0)]
    $ForceDotSource = $false
)
$VaporshellPath = $PSScriptRoot
'@ | Set-Content -Path (Join-Path -Path $outputModVerDir -ChildPath "$($ENV:BHProjectName).psm1") -Encoding UTF8 -Force
    $psm1 = Get-Item (Join-Path -Path $outputModVerDir -ChildPath "$($ENV:BHProjectName).psm1")

    Write-BuildLog -Verbose 'Adding Private functions to psm1...'
    Get-ChildItem -Path (Join-Path -Path $sut -ChildPath 'Private') -Recurse -File | Where-Object {$_.Name -ne 'PseudoParams.txt'} | ForEach-Object {
        "$(Get-Content $_.FullName -Raw)`n" | Add-Content -Path $psm1 -Encoding UTF8
    }
    Write-BuildLog -Verbose 'Adding Public functions to psm1...'
    Get-ChildItem -Path (Join-Path -Path $sut -ChildPath 'Public') -Recurse -File | Where-Object {$_.FullName -notlike "*Development Tools*"} | ForEach-Object {
        "$(Get-Content $_.FullName -Raw)`nExport-ModuleMember -Function '$($_.BaseName)'`n" | Add-Content -Path $psm1 -Encoding UTF8
        $functionsToExport += $_.BaseName
    }

    Write-BuildLog -Verbose 'Copying bin path...'
    New-Item -Path "$outputModVerDir\bin" -ItemType Directory -ErrorAction SilentlyContinue > $null
    New-Item -Path "$outputModVerDir\bin\Net45" -ItemType Directory -ErrorAction SilentlyContinue > $null
    New-Item -Path "$outputModVerDir\bin\NetCore" -ItemType Directory -ErrorAction SilentlyContinue > $null
    Copy-Item -Path "$sut\bin\*" -Destination "$outputModVerDir\bin" -Recurse -ErrorAction SilentlyContinue

    Write-BuildLog -Verbose 'Copying DSL module...'
    New-Item -Path "$outputModVerDir\DSL" -ItemType Directory -ErrorAction SilentlyContinue > $null
    Copy-Item -Path "$sut\DSL\*" -Destination "$outputModVerDir\DSL" -Recurse -ErrorAction SilentlyContinue

    Write-BuildLog -Verbose 'Creating Variable hash...'
    $varHash = @("@{")
    Get-Content -Path "$($env:BHPSModulePath)\Private\PseudoParams.txt" | ForEach-Object {
        $name = "_$(($_ -replace "::").Trim())"
        $varHash += "    '$name' = '$($_.Trim())'"
    }
    $varHash += "}"

    Write-BuildLog -Verbose 'Creating Alias hash...'
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

    Write-BuildLog -Verbose 'Setting remainder of PSM1 contents...'
@"

# Load the .NET assemblies
`$sdkPath = if (`$PSVersionTable.PSVersion.Major -ge 6) {
    Write-Verbose "Loading the *netcore* assemblies!"
    Join-Path `$Script:VaporshellPath "bin\NetCore" -Resolve
}
else {
    Write-Verbose "Loading the *net45* assemblies!"
    Join-Path `$Script:VaporshellPath "bin\Net45" -Resolve
}
'AWSSDK.Core','AWSSDK.SecurityToken','AWSSDK.CloudFormation','AWSSDK.S3','Newtonsoft.Json','YamlDotNet','VaporShell'  | ForEach-Object {
    `$assName = "`$(`$_).dll"
    `$assPath = (Join-Path `$sdkPath `$assName)
    if (Test-Path `$assPath) {
        try {
            [System.Reflection.Assembly]::LoadFrom(`$assPath) | Out-Null
            Write-Verbose "Loaded: `$assName"
        }
        catch {
            Write-Warning "Failed to load: `$assName``n``t  `$(`$_.Exception.Message)"
        }
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

    Write-BuildLog -Verbose 'Copying manifest...'
    Copy-Item -Path $env:BHPSModuleManifest -Destination $outputModVerDir

    Write-BuildLog -Verbose 'Updating manifest...'
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
        Write-BuildLog -Verbose 'Renaming manifest to correct casing...'
        Rename-Item (Join-Path $outputModVerDir "$($env:BHProjectName).psd1") -NewName "$($env:BHProjectName).psd1" -Force
    }
    Write-BuildLog "Created compiled module at [$outputModDir]!"
    Write-BuildLog 'Output version directory contents:'
    Invoke-CommandWithLog {Get-ChildItem $outputModVerDir | Format-Table -Autosize}
} -description 'Compiles module from source'

task CompileCSharp -depends CompilePowerShell {
    Invoke-CommandWithLog {Get-Command dotnet | Select-Object Name,Version | Out-String | Write-BuildLog}
    Invoke-CommandWithLog {Push-Location "$PSScriptRoot\src"}
    Write-BuildLog -c 'dotnet clean'
    dotnet clean
    if (!$?) {
        throw "dotnet clean failed!"
    }
    Write-BuildLog -c "dotnet build -c $buildConfiguration --force"
    dotnet build -c $buildConfiguration --force
    if (!$?) {
        throw "dotnet build failed!"
    }
    Invoke-CommandWithLog {
        Get-ChildItem ".\bin\$buildConfiguration\net45" -Filter "*.dll" | ForEach-Object {
            try {
                $_ | Copy-Item -Destination "$outputModVerDir\bin\Net45" -Force
            }
            catch {
                Write-BuildWarning $_.Exception.Message
            }
        }
    }
    Invoke-CommandWithLog {
        Get-ChildItem ".\bin\$buildConfiguration\netstandard2.0" -Filter "*.dll" | ForEach-Object {
            try {
                $_ | Copy-Item -Destination "$outputModVerDir\bin\NetCore" -Force
            }
            catch {
                Write-BuildWarning $_.Exception.Message
            }
        }
    }
    Invoke-CommandWithLog {Pop-Location}
}


task Compile -depends CompileCSharp,Import


Task Import -Depends Init {
    Write-BuildLog 'Testing import of compiled module'
    Import-Module (Join-Path $outputModVerDir "$($env:BHProjectName).psd1") -Verbose:$false
} -description 'Imports the newly compiled module'

$pesterScriptBlock = {
    . "$PSScriptRoot\ci\AzurePipelinesHelpers.ps1"

    Set-BuildVariables

    Write-BuildLog "Installing the latest version of Pester"
    Install-Module -Name Pester -Repository PSGallery -Scope CurrentUser -AllowClobber -SkipPublisherCheck -Confirm:$false -ErrorAction Stop -Force -Verbose:$false
    Import-Module -Name Pester -Verbose:$false -Force
    Write-BuildLog "Getting correctly cased FullName for $outputModDir..."
    $outputModDir = (Get-ChildItem (Split-Path $outputModDir -Parent) -Directory | Where-Object {$_.Name -eq (Get-Item $outputModDir).Name}).FullName
    Write-BuildLog "FullName resolved to $outputModDir..."
    Write-BuildLog 'Pushing location...'
    try {
        Push-Location $outputModDir -PassThru
    }
    catch {
        $_
        Write-Error $_
    }
    if (-not $ENV:BHProjectPath) {
        Write-BuildLog 'Setting Build Environment...'
        Set-BuildVariables
    }

    $origModulePath = $env:PSModulePath
    if ( $env:PSModulePath.split($pathSeperator) -notcontains $outputDir ) {
        Write-BuildLog 'Updating PSModulePath to include OutputDir...'
        $env:PSModulePath = ($outputDir + $pathSeperator + $origModulePath)
    }
    Write-BuildLog "Removing and reimporting $($env:BHProjectName) module..."
    Remove-Module $ENV:BHProjectName -ErrorAction SilentlyContinue -Verbose:$false
    Import-Module -Name $outputModDir -Force -Verbose:$false
    $testResultsXml = Join-Path -Path $outputDir -ChildPath $TestFile
    $pesterParams = @{
        OutputFormat = 'NUnitXml'
        OutputFile   = $testResultsXml
        PassThru     = $true
        Path         = $tests
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
        $testResults | Format-List
        Write-Error -Message 'One or more Pester tests failed. Build cannot continue!'
    }
    Pop-Location
    $env:PSModulePath = $origModulePath
}

task Pester -Depends Compile,Import $pesterScriptBlock -description 'Run Pester tests'

task PesterOnly -Depends Import $pesterScriptBlock -description 'Run Pester tests only (no Update/Clean/Compile)'

task Analyze -Depends Pester {
    $analysis = Invoke-ScriptAnalyzer -Path "$PSScriptRoot\$($env:BHProjectName)" -Recurse -Verbose:$false
    $errors = $analysis | Where-Object {$_.Severity -eq 'Error'}
    $warnings = $analysis | Where-Object {$_.Severity -eq 'Warning'}

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
} -description 'Run PSScriptAnalyzer'

Task Deploy -Depends Init {
    . "$PSScriptRoot\ci\AzurePipelinesHelpers.ps1"

    Set-BuildVariables
    function Publish-GitHubRelease {
        <#
            .SYNOPSIS
            Publishes a release to GitHub Releases. Borrowed from https://www.herebedragons.io/powershell-create-github-release-with-artifact
        #>
        [CmdletBinding()]
        Param (
            [parameter(Mandatory = $true)]
            [String]
            $VersionNumber,
            [parameter(Mandatory = $false)]
            [String]
            $CommitId = 'master',
            [parameter(Mandatory = $true)]
            [String]
            $ReleaseNotes,
            [parameter(Mandatory = $true)]
            [ValidateScript( {Test-Path $_})]
            [String]
            $ArtifactPath,
            [parameter(Mandatory = $true)]
            [String]
            $GitHubUsername,
            [parameter(Mandatory = $true)]
            [String]
            $GitHubRepository,
            [parameter(Mandatory = $true)]
            [String]
            $GitHubApiKey,
            [parameter(Mandatory = $false)]
            [Switch]
            $PreRelease,
            [parameter(Mandatory = $false)]
            [Switch]
            $Draft
        )
        $releaseData = @{
            tag_name         = [string]::Format("v{0}", $VersionNumber)
            target_commitish = $CommitId
            name             = [string]::Format("$($env:BHProjectName) v{0}", $VersionNumber)
            body             = $ReleaseNotes
            draft            = [bool]$Draft
            prerelease       = [bool]$PreRelease
        }

        $auth = 'Basic ' + [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes($gitHubApiKey + ":x-oauth-basic"))

        $releaseParams = @{
            Uri         = "https://api.github.com/repos/$GitHubUsername/$GitHubRepository/releases"
            Method      = 'POST'
            Headers     = @{
                Authorization = $auth
            }
            ContentType = 'application/json'
            Body        = (ConvertTo-Json $releaseData -Compress)
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $result = Invoke-RestMethod @releaseParams
        $uploadUri = $result | Select-Object -ExpandProperty upload_url
        $uploadUri = $uploadUri -creplace '\{\?name,label\}'
        $artifact = Get-Item $ArtifactPath
        $uploadUri = $uploadUri + "?name=$($artifact.Name)"
        $uploadFile = $artifact.FullName

        $uploadParams = @{
            Uri         = $uploadUri
            Method      = 'POST'
            Headers     = @{
                Authorization = $auth
            }
            ContentType = 'application/zip'
            InFile      = $uploadFile
        }
        $result = Invoke-RestMethod @uploadParams
    }
    if (($env:BHBuildSystem -eq 'VSTS' -and $env:BHCommitMessage -match '!deploy' -and $env:BHBranchName -eq "master") -or $global:ForceDeploy -eq $true) {
        if ($null -eq (Get-Module PoshTwit -ListAvailable)) {
            Write-BuildLog "Installing PoshTwit module..."
            Install-Module PoshTwit -Scope CurrentUser
        }
        Import-Module PoshTwit -Verbose:$false
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
            try {
                if ($ENV:BHBuildSystem -eq 'VSTS' -and -not [String]::IsNullOrEmpty($env:NugetApiKey)) {
                    Write-BuildLog "Publishing version [$($versionToDeploy)] to PSGallery..."
                    Update-Metadata -Path (Join-Path $outputModVerDir "$($env:BHProjectName).psd1") -PropertyName ModuleVersion -Value $versionToDeploy
                    Publish-Module -Path $outputModVerDir -NuGetApiKey $env:NugetApiKey -Repository PSGallery
                    Write-BuildLog "Deployment successful!"
                }
                else {
                    Write-BuildLog "[SKIPPED] Deployment of version [$($versionToDeploy)] to PSGallery"
                }
                $commitId = git rev-parse --verify HEAD
                if (-not [String]::IsNullOrEmpty($env:GitHubPAT)) {
                    Write-BuildLog "Creating Release ZIP..."
                    $zipPath = [System.IO.Path]::Combine($PSScriptRoot,"$($env:BHProjectName).zip")
                    if (Test-Path $zipPath) {
                        Remove-Item $zipPath -Force
                    }
                    Add-Type -Assembly System.IO.Compression.FileSystem
                    [System.IO.Compression.ZipFile]::CreateFromDirectory($outputModDir,$zipPath)
                    Write-BuildLog "Publishing Release v$($versionToDeploy) @ commit Id [$($commitId)] to GitHub..."
                    $ReleaseNotes = "# Changelog`n`n"
                    $ReleaseNotes += (git log -1 --pretty=%B | Select-Object -Skip 2) -join "`n"
                    $ReleaseNotes += "`n`n***`n`n# Instructions`n`n"
                    $ReleaseNotes += @"
1. [Click here](https://github.com/scrthq/$($env:BHProjectName)/releases/download/v$($versionToDeploy.ToString())/$($env:BHProjectName).zip) to download the *$($env:BHProjectName).zip* file attached to the release.
2. **If on Windows**: Right-click the downloaded zip, select Properties, then unblock the file.
    > _This is to prevent having to unblock each file individually after unzipping._
3. Unzip the archive.
4. (Optional) Place the module folder somewhere in your ``PSModulePath``.
    > _You can view the paths listed by running the environment variable ```$env:PSModulePath``_
5. Import the module, using the full path to the PSD1 file in place of ``$($env:BHProjectName)`` if the unzipped module folder is not in your ``PSModulePath``:
    ``````powershell
    # In `$env:PSModulePath
    Import-Module $($env:BHProjectName)

    # Otherwise, provide the path to the manifest file:
    Import-Module -Path C:\MyPSModules\$($env:BHProjectName)\$($versionToDeploy.ToString())\$($env:BHProjectName).psd1
    ``````
"@
                    $gitHubParams = @{
                        VersionNumber    = $versionToDeploy.ToString()
                        CommitId         = $commitId
                        ReleaseNotes     = $ReleaseNotes
                        ArtifactPath     = $zipPath
                        GitHubUsername   = 'scrthq'
                        GitHubRepository = $env:BHProjectName
                        GitHubApiKey     = $env:GitHubPAT
                        Draft            = $false
                    }
                    Write-BuildLog -c 'Publish-GitHubRelease @gitHubParams'
                    Publish-GitHubRelease @gitHubParams
                    Write-BuildLog "Release creation successful!"
                }
                else {
                    Write-BuildLog "[SKIPPED] Publishing Release v$($versionToDeploy) @ commit Id [$($commitId)] to GitHub"
                }
                if ($ENV:BHBuildSystem -eq 'VSTS' -and -not [String]::IsNullOrEmpty($env:TwitterAccessSecret) -and -not [String]::IsNullOrEmpty($env:TwitterAccessToken) -and -not [String]::IsNullOrEmpty($env:TwitterConsumerKey) -and -not [String]::IsNullOrEmpty($env:TwitterConsumerSecret)) {
                    Write-BuildLog "Publishing tweet about new release..."
                    $manifest = Import-PowerShellDataFile -Path (Join-Path $outputModVerDir "$($env:BHProjectName).psd1")
                    $text = "#$($env:BHProjectName) v$($versionToDeploy) is now available on the #PSGallery! https://www.powershellgallery.com/packages/$($env:BHProjectName) #PowerShell"
                    $manifest.PrivateData.PSData.Tags | Foreach-Object {
                        $text += " #$($_)"
                    }
                    if ($text.Length -gt 280) {
                        Write-BuildLog "Trimming [$($text.Length - 280)] extra characters from tweet text to get to 280 character limit..."
                        $text = $text.Substring(0,280)
                    }
                    Write-BuildLog "Tweet text: $text"
                    Publish-Tweet -Tweet $text -ConsumerKey $env:TwitterConsumerKey -ConsumerSecret $env:TwitterConsumerSecret -AccessToken $env:TwitterAccessToken -AccessSecret $env:TwitterAccessSecret
                    Write-BuildLog "Tweet successful!"
                }
                else {
                    Write-BuildLog "[SKIPPED] Twitter update of new release"
                }
            }
            catch {
                Write-Error $_ -ErrorAction Stop
            }
        }
        else {
            Write-Host -ForegroundColor Yellow "No module version matched! Negating deployment to prevent errors"
            $env:BHCommitMessage = $env:BHCommitMessage.Replace('!deploy','')
        }

    }
    else {
        Write-Host -ForegroundColor Magenta "Build system is not VSTS, commit message does not contain '!deploy' and/or branch is not 'master' -- skipping module update!"
    }
} -description 'Deploy module to PSGallery' -preaction {
    Import-Module -Name $outputModDir -Force -Verbose:$false
}
