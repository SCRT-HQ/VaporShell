
[cmdletbinding(DefaultParameterSetName = 'task')]
param(
    [parameter(ParameterSetName = 'task', Position = 0)]
    [ValidateSet('Init','Update','Clean','Compile','CompilePowerShell','CompileCSharp','Import','Pester','PesterOnly','Deploy')]
    [string[]]
    $Task = 'Compile',
    [parameter(ParameterSetName = 'task')]
    [switch]
    $UpdateModules,
    [parameter(ParameterSetName = 'help')]
    [switch]
    $Help
)

$env:BuildProjectName = 'VaporShell'
$env:_BuildStart = Get-Date -Format 'o'
$env:BuildScriptPath = $PSScriptRoot

. "$PSScriptRoot\ci\AzureDevOpsHelpers.ps1"

Add-EnvironmentSummary Build started


Set-BuildVariables

Add-Heading Setting package feeds
# build/init script borrowed from PoshBot x Brandon Olin
Write-BuildLog -c 'Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false'
Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false
Write-BuildLog -c 'Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false'
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false
Write-BuildLog -c @'
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
'@
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


$update = @{}
$verbose = @{}
if ($PSBoundParameters.ContainsKey('UpdateModules')) {
    $update['UpdateModules'] = $PSBoundParameters['UpdateModules']
}
if ($PSBoundParameters.ContainsKey('Verbose')) {
    $verbose['Verbose'] = $PSBoundParameters['Verbose']
}

if ($Help) {
    Add-Heading Getting help
    Write-BuildLog -c '"psake" | Resolve-Module @update -Verbose'
    'psake' | Resolve-Module @update -Verbose
    Write-BuildLog psake script tasks:
    Get-PSakeScriptTasks -buildFile "$PSScriptRoot\psake.ps1" |
        Sort-Object -Property Name |
        Format-Table -Property Name, Description, Alias, DependsOn
}
else {
    Add-Heading Finalizing build prerequisites
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
        <#
        $bH = Get-Module BuildHelpers -ListAvailable | Where-Object {$_.Version -eq [System.Version]'2.0.1'}
        if ($null -eq $bh) {
            "    Installing BuildHelpers v2.0.1"
            Install-Module BuildHelpers-Repository PSGallery -Force -AllowClobber -SkipPublisherCheck -Scope CurrentUser #-RequiredVersion '2.0.1'
        }
        "    Importing BuildHelpers v2.0.1"
        Import-Module BuildHelpers #-RequiredVersion '2.0.1'
        Set-BuildEnvironment -Force
        #>
        Write-BuildLog Resolving necessary modules
        'psake' | Resolve-Module @update -Verbose
        Write-BuildLog Modules successfully resolved
        if ($Task -in @('TestOnly','PesterOnly')) {
            $global:ExcludeTag = @('Module')
        }
        else {
            $global:ExcludeTag = $null
        }
        if ($Force) {
            $global:ForceDeploy = $true
        }
        else {
            $global:ForceDeploy = $false
        }
        Add-Heading "Invoking psake with task list: [ $($Task -join ', ') ]"
        $psakeParams = @{
            nologo = $true
            buildFile = "$PSScriptRoot\psake.ps1"
            taskList = $Task
        }
        Invoke-psake @psakeParams @verbose
        if ($finalTasks -contains 'Import' -and $psake.build_success) {
            Add-Heading "Importing $env:BuildProjectName to local scope"
            Import-Module ([System.IO.Path]::Combine($env:BHBuildOutput,$env:BuildProjectName)) -Verbose:$false
        }
        Add-EnvironmentSummary Build finished
        exit ( [int]( -not $psake.build_success ) )
    }
}
