[CmdletBinding()]
Param(
    # Process-specific parameters
    [Parameter()]
    [string]
    $ModuleName = 'VaporShell',
    [Parameter()]
    [hashtable]
    $Dependencies = @{
        Configuration     = '1.3.1'
        PackageManagement = '1.3.1'
        PowerShellGet     = '2.1.2'
        InvokeBuild       = '5.5.2'
    },
    [Parameter()]
    [Switch]
    $NoUpdate,
    #region: Invoke-Build parameters
    [Parameter()]
    [ValidateSet('Init','Clean','Build','Test','Analyze','Deploy','Full')]
    [string[]]
    $Task,
    [Parameter()]
    [object]
    $File,
    [Parameter()]
    [switch]
    $Safe,
    [Parameter()]
    [switch]
    $Summary
    #endregion: Invoke-Build parameters
)
#region: Import Azure Pipeline Helper functions from Gist or cached version if already pulled.
# Gist is specified via Commit SHA so future Gist updates cannot introduce breaking changes to
# scripts pinned to the specific commit.
$helperUri = @(
    'https://gist.githubusercontent.com'
    'scrthq'                                    # User
    'a99cc06e75eb31769d01b2adddc6d200'          # Gist ID
    'raw'
    '017a0f70ef9f7675119f1dadd4209857a3824ff0'  # Commit SHA
    'AzurePipelineHelpers.ps1'                  # Filename
) -join '/'
$fileUri = $helperUri -replace "[$([RegEx]::Escape("$(([System.IO.Path]::GetInvalidFileNameChars() + [System.IO.Path]::GetInvalidPathChars()) -join '')"))]","_"
$ciPath = [System.IO.Path]::Combine($PSScriptRoot,'ci')
$localGistPath = [System.IO.Path]::Combine($ciPath,$fileUri)
if (Test-Path $localGistPath) {
    Write-Host -ForegroundColor Cyan "##[section] Importing Azure Pipelines Helper from Cached Gist: $localGistPath"
    $helperContent = Get-Content $localGistPath -Raw
}
else {
    Write-Host -ForegroundColor Cyan "##[section] Cleaning out stale Gist scripts from the CI Path"
    Get-ChildItem $ciPath -Filter 'https___gist.githubusercontent.com_scrthq*.ps1' | Remove-Item -Force
    Write-Host -ForegroundColor Cyan "##[section] Importing Azure Pipelines Helper from Gist: $helperUri"
    $helperContent = Invoke-RestMethod -Uri $helperUri
    $helperContent | Set-Content $localGistPath -Force
}
.([scriptblock]::Create($helperContent))($ModuleName)
Set-BuildVariables
#endregion

Add-Heading "Setting PSGallery InstallationPolicy to 'Trusted'"
if ((Get-PSRepository -Name PSGallery).InstallationPolicy -ne 'Trusted') {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false
}
Add-Heading "Setting `$PSDefaultParameterValues for *-Module functions"
$PSDefaultParameterValues = @{
    '*-Module:Verbose'                  = $false
    '*-Module:Force'                    = $true
    'Import-Module:ErrorAction'         = 'Stop'
    'Install-Module:AcceptLicense'      = $true
    'Install-Module:AllowClobber'       = $true
    'Install-Module:Confirm'            = $false
    'Install-Module:ErrorAction'        = 'Stop'
    'Install-Module:Repository'         = 'PSGallery'
    'Install-Module:Scope'              = 'CurrentUser'
    'Install-Module:SkipPublisherCheck' = $true
}
Add-Heading "Resolving module dependencies"
$moduleDependencies = @()
foreach ($module in $Dependencies.Keys) {
    $moduleDependencies += @{
        Name           = $module
        MinimumVersion = $Dependencies[$module]
    }
}
(Import-PowerShellDataFile ([System.IO.Path]::Combine($PSScriptRoot,$ModuleName,"$ModuleName.psd1"))).RequiredModules | ForEach-Object {
    $item = $_
    if ($item -is [hashtable]) {
        $hash = @{
            Name = $item['ModuleName']
        }
        if ($_.ContainsKey('ModuleVersion')) {
            $hash['RequiredVersion'] = $item['ModuleVersion']
        }
        $moduleDependencies += $hash
    }
    else {
        if ($Dependencies.Keys -notcontains $item) {
            $moduleDependencies += @{
                Name = $item
            }
        }
    }
}
try {
    $null = Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false -ErrorAction Stop
}
catch {
    throw
}
foreach ($item in $moduleDependencies) {
    Write-BuildLog "[$($item['Name'])] Resolving"
    try {
        if ($imported = Get-Module $item['Name']) {
            Write-BuildLog "[$($item['Name'])] Removing imported module"
            $imported | Remove-Module
        }
        Import-Module @item
    }
    catch {
        Write-BuildLog "[$($item['Name'])] Installing missing module"
        Install-Module @item
        Import-Module @item
    }
}

Add-Heading "Executing Invoke-Build"
Invoke-Build -ModuleName $ModuleName @PSBoundParameters

<#
[cmdletbinding(DefaultParameterSetName = 'task')]
param(
    [parameter(ParameterSetName = 'task', Position = 0)]
    [ValidateSet('Init','Clean','Update','Build','Import','Full','Test','Deploy')]
    [string[]]
    $Task,
    [Parameter()]
    [string]
    $ModuleName = (Get-Item $PSScriptRoot).BaseName,
    [Parameter()]
    [hashtable]
    $Dependencies = @{
        Configuration     = '1.3.1'
        PackageManagement = '1.3.1'
        PowerShellGet     = '2.1.2'
        InvokeBuild       = '5.5.2'
    },
    [parameter(ParameterSetName = 'help')]
    [switch]$Help,

    [switch]$UpdateModules
)
$helperUri = @(
    'https://gist.githubusercontent.com'
    'scrthq'                                    # User
    'a99cc06e75eb31769d01b2adddc6d200'          # Gist ID
    'raw'
    '017a0f70ef9f7675119f1dadd4209857a3824ff0'  # Commit SHA
    'AzurePipelineHelpers.ps1'                  # Filename
) -join '/'
$fileUri = $helperUri -replace "[$([RegEx]::Escape("$(([System.IO.Path]::GetInvalidFileNameChars() + [System.IO.Path]::GetInvalidPathChars()) -join '')"))]","_"
$ciPath = [System.IO.Path]::Combine($PSScriptRoot,'ci')
$localGistPath = [System.IO.Path]::Combine($ciPath,$fileUri)
if (Test-Path $localGistPath) {
    Write-Host -ForegroundColor Cyan "##[section] Importing Azure Pipelines Helper from Cached Gist: $localGistPath"
    $helperContent = Get-Content $localGistPath -Raw
} else {
    Write-Host -ForegroundColor Cyan "##[section] Cleaning out stale Gist scripts from the CI Path"
    Get-ChildItem $ciPath -Filter 'https___gist.githubusercontent.com_scrthq*.ps1' | Remove-Item -Force
    Write-Host -ForegroundColor Cyan "##[section] Importing Azure Pipelines Helper from Gist: $helperUri"
    $helperContent = Invoke-RestMethod -Uri $helperUri
    $helperContent | Set-Content $localGistPath -Force
}
.([scriptblock]::Create($helperContent))($ModuleName)
Set-BuildVariables

# build/init script borrowed from PoshBot x Brandon Olin
Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false | Out-Null
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false
$PSDefaultParameterValues = @{
    '*-Module:Verbose' = $false
    'Import-Module:ErrorAction' = 'Stop'
    'Import-Module:Force' = $true
    'Import-Module:Verbose' = $false
    'Install-Module:AllowClobber' = $true
    'Install-Module:ErrorAction' = 'Stop'
    'Install-Module:Force' = $true
    'Install-Module:Scope' = 'CurrentUser'
    'Install-Module:Verbose' = $false
}

function Resolve-Module {
    [Cmdletbinding()]
    param (
        [Parameter(Mandatory, ValueFromPipeline)]
        [string[]]$Name,

        [switch]$UpdateModules
    )
    process {
        foreach ($moduleName in $Name) {
            $versionToImport = ''

            Write-Verbose -Message "Resolving Module [$($moduleName)]"
            if ($Module = Get-Module -Name $moduleName -ListAvailable -Verbose:$false) {
                # Determine latest version on PSGallery and warn us if we're out of date
                $latestLocalVersion = ($Module | Measure-Object -Property Version -Maximum).Maximum
                $latestGalleryVersion = (Find-Module -Name $moduleName -Repository PSGallery |
                    Measure-Object -Property Version -Maximum).Maximum

                # Out we out of date?
                if ($latestLocalVersion -lt $latestGalleryVersion) {
                    if ($UpdateModules) {
                        Write-Verbose -Message "$($moduleName) installed version [$($latestLocalVersion.ToString())] is outdated. Installing gallery version [$($latestGalleryVersion.ToString())]"
                        if ($UpdateModules) {
                            Install-Module -Name $moduleName -RequiredVersion $latestGalleryVersion
                            $versionToImport = $latestGalleryVersion
                        }
                    } else {
                        Write-Warning "$($moduleName) is out of date. Latest version on PSGallery is [$latestGalleryVersion]. To update, use the -UpdateModules switch."
                    }
                } else {
                    $versionToImport = $latestLocalVersion
                }
            } else {
                Write-Verbose -Message "[$($moduleName)] missing. Installing..."
                Install-Module -Name $moduleName -Repository PSGallery
                $versionToImport = (Get-Module -Name $moduleName -ListAvailable | Measure-Object -Property Version -Maximum).Maximum
            }

            Write-Verbose -Message "$($moduleName) installed. Importing..."
            if (-not [string]::IsNullOrEmpty($versionToImport)) {
                Import-module -Name $moduleName -RequiredVersion $versionToImport
            } else {
                Import-module -Name $moduleName
            }
        }
    }
}

$update = @{}
$verbose = @{}
if ($PSBoundParameters.ContainsKey('UpdateModules')) {
    $update['UpdateModules'] = $PSBoundParameters['UpdateModules']
}
if ($PSBoundParameters.ContainsKey('Verbose')) {
    $verbose['Verbose'] = $PSBoundParameters['Verbose']
}

if ($Help) {
    'psake' | Resolve-Module @update -Verbose
    Get-PSakeScriptTasks -buildFile "$PSScriptRoot\psake.ps1" |
        Sort-Object -Property Name |
        Format-Table -Property Name, Description, Alias, DependsOn
}
else {
    if (
        $Task -eq 'Deploy' -and -not $Force -and (
            $ENV:BUILD_BUILDURI -notlike 'vstfs:*' -or
            $env:BUILD_SOURCEBRANCH -like '*pull*' -or
            $env:BUILD_SOURCEVERSIONMESSAGE -notmatch '!deploy' -or
            $env:BUILD_SOURCEBRANCHNAME -ne 'master' -or
            $PSVersionTable.PSVersion.Major -ne 5 -or
            $null -eq $env:NugetApiKey
        )
    ) {
        "Task is 'Deploy', but conditions are not correct for deployment:`n" +
        "    + Current build system is VSTS     : $($env:BUILD_BUILDURI -like 'vstfs:*') [$env:BUILD_BUILDURI]`n" +
        "    + Current branch is master         : $($env:BUILD_SOURCEBRANCHNAME -eq 'master') [$env:BUILD_SOURCEBRANCHNAME]`n" +
        "    + Source is not a pull request	    : $($env:BUILD_SOURCEBRANCH -notlike '*pull*') [$env:BUILD_SOURCEBRANCH]`n" +
        "    + Current PS major version is 5    : $($PSVersionTable.PSVersion.Major -eq 5) [$($PSVersionTable.PSVersion.ToString())]`n" +
        "    + NuGet API key is not null        : $($null -ne $env:NugetApiKey)`n" +
        "    + Build script is not Force ran    : $($Force)`n" +
        "    + Commit message matches '!deploy' : $($env:BUILD_SOURCEVERSIONMESSAGE -match '!deploy') [$env:BUILD_SOURCEVERSIONMESSAGE]`n" +
        "Skipping psake for this job!" | Write-Host -ForegroundColor Yellow
        exit 0
    }
    else {
        if ($Task -eq 'Deploy') {
            "Task is 'Deploy' and conditions are correct for deployment:`n" +
            "    + Build script is Force ran        : $($Force)`n" +
            "    + Current build system is VSTS     : $($env:BUILD_BUILDURI -like 'vstfs:*') [$env:BUILD_BUILDURI]`n" +
            "    + Current branch is master         : $($env:BUILD_SOURCEBRANCHNAME -eq 'master') [$env:BUILD_SOURCEBRANCHNAME]`n" +
            "    + Source is not a pull request     : $($env:BUILD_SOURCEBRANCH -notlike '*pull*') [$env:BUILD_SOURCEBRANCH]`n" +
            "    + Current PS major version is 5    : $($PSVersionTable.PSVersion.Major -eq 5) [$($PSVersionTable.PSVersion.ToString())]`n" +
            "    + NuGet API key is not null        : $($null -ne $env:NugetApiKey)`n" +
            "    + Commit message matches '!deploy' : $($env:BUILD_SOURCEVERSIONMESSAGE -match '!deploy') [$env:BUILD_SOURCEVERSIONMESSAGE]"| Write-Host -ForegroundColor Green
        }
        'psake' | Resolve-Module @update -Verbose
        Set-BuildEnvironment -Force
        Write-Host -ForegroundColor Green "Modules successfully resolved..."
        $psakeParams = @{
            nologo = $true
            buildFile = "$PSScriptRoot\psake.ps1"
        }
        if ($PSBoundParameters.ContainsKey('Task')) {
            Write-Host -ForegroundColor Green "Invoking psake with task list: [ $($Task -join ', ') ]`n"
            $psakeParams['taskList'] = $Task
        }
        if ($Force) {
            $global:ForceDeploy = $true
        }
        else {
            $global:ForceDeploy = $false
        }
        Invoke-psake @psakeParams @verbose
        if ($Task -contains 'Import' -and $psake.build_success) {
            Import-Module ([System.IO.Path]::Combine($env:BHBuildOutput,$env:BHProjectName)) -Verbose:$false
        }
        exit ( [int]( -not $psake.build_success ) )
    }
}
#>
