New-Variable -Name IsCI -Value $($IsCI -or (Test-Path Env:\TF_BUILD)) -Scope Global -Force -Option AllScope

if ($IsCI) {
    Write-Host "##[info] This is an info test!"
    Write-Host "##[section] This is colored green!"
    Write-Host "##[command] This is colored blue!"
    Write-Host "##[debug] This is colored purple!"
    Write-Host "##[warning] This is colored orange!"
    Write-Host "##vso[task.logissue type=warning;]This is colored orange - task.logissue!"
    Write-Host "##[error] This is colored red!"
    Write-Host "##vso[task.logissue type=error;]This is colored red - task.logissue!"
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

function Add-Heading {
    param(
        [parameter(Position = 0,ValueFromRemainingArguments)]
        [String]
        $Title
    )
    $lines = '----------------------------------------------------------------------'
    @(
        ''
        $lines
        $($Title -join " ")
        $lines
    ) | Write-Host -ForegroundColor Cyan
}
Set-Alias -Name Heading -Value Add-Heading -Force

function Add-EnvironmentSummary {
    param(
        [parameter(Position = 0,ValueFromRemainingArguments)]
        [String]
        $State
    )
    Add-Heading Build Environment Summary
    @(
        "Project : $env:BuildProjectName"
        "State   : $State"
        "Engine  : PowerShell $($PSVersionTable.PSVersion.ToString())"
        "Host OS : $(if($PSVersionTable.PSVersion.Major -le 5 -or $IsWindows){"Windows"}elseif($IsLinux){"Linux"}elseif($IsMacOS){"macOS"}else{"[UNKNOWN]"})"
        "PWD     : $PWD"
        ''
    ) | Write-Host
}
Set-Alias -Name Summary -Value Add-EnvironmentSummary -Force

function Write-BuildWarning {
    param(
        [parameter(Mandatory,Position = 0,ValueFromRemainingArguments,ValueFromPipeline)]
        [System.Object]
        $Message
    )
    Process {
        Write-Warning $Message
        if ($IsCI) {
            Write-Host "##vso[task.logissue type=warning;]$Message"
        }
        else {
        }
    }
}

function Write-BuildError {
    param(
        [parameter(Mandatory,Position = 0,ValueFromRemainingArguments,ValueFromPipeline)]
        [System.Object]
        $Message
    )
    Process {
        Write-Error $Message
        if ($IsCI) {
            Write-Host "##vso[task.logissue type=error;]$Message"
        }
    }
}

function Write-BuildLog {
    param(
        [parameter(Mandatory,Position = 0,ValueFromRemainingArguments,ValueFromPipeline)]
        [System.Object]
        $Message,
        [parameter()]
        [Alias('c')]
        [Switch]
        $Cmd,
        [parameter()]
        [Alias('w')]
        [Switch]
        $Warning,
        [parameter()]
        [Alias('s','e')]
        [Switch]
        $Severe,
        [parameter()]
        [Alias('x','nd','n')]
        [Switch]
        $Clean
    )
    Begin {
        if ($Severe) {
            $fg = 'Red'
            $lvl = '##[error] '
        }
        elseif ($Warning) {
            $fg = 'Yellow'
            $lvl = '##[warning] '
        }
        elseif ($Cmd) {
            $fg = 'Blue'
            $lvl = '##[command] PS > '
        }
        else {
            $fg = 'White'
            $lvl = '##[info] '
        }
    }
    Process {
        $fmtMsg = if ($Clean){
            $lvl + $Message
        }
        else {
            $date = "[$((Get-Date).ToString("HH:mm:ss")) +$(((Get-Date) - (Get-Date $env:_BuildStart)).ToString())] "
            $lvl + $date + $Message
        }
        Write-Host -ForegroundColor $fg $fmtMsg
        if ($IsCI) {

        }
    }
}
Set-Alias -Name Log -Value Write-BuildLog -Force

function Set-EnvironmentVariable {
    param(
        [parameter(Position = 0)]
        [String]
        $Name,
        [parameter(Position = 1,ValueFromRemainingArguments)]
        [String[]]
        $Value
    )
    $fullVal = $Value -join " "
    Write-BuildLog "Setting env variable '$Name' to '$fullVal'"
    Set-Item -Path Env:\$Name -Value $fullVal -Force
    if ($IsCI) {
        "##vso[task.setvariable variable=$Name]$fullVal" | Write-Host
    }
}
Set-Alias -Name SetEnv -Value Set-EnvironmentVariable -Force

function Set-BuildVariables {
    $gitVars = if ($IsCI) {
        @{
            BHBranchName = $env:BUILD_SOURCEBRANCHNAME
            BHPSModuleManifest = "$env:BuildScriptPath\$env:BuildProjectName\$env:BuildProjectName.psd1"
            BHPSModulePath = "$env:BuildScriptPath\$env:BuildProjectName"
            BHProjectName = $env:BuildProjectName
            BHBuildNumber = $env:BUILD_BUILDNUMBER
            BHModulePath = "$env:BuildScriptPath\$env:BuildProjectName"
            BHBuildOutput = "$env:BuildScriptPath\BuildOutput"
            BHBuildSystem = 'VSTS'
            BHProjectPath = $env:SYSTEM_DEFAULTWORKINGDIRECTORY
            BHCommitMessage = $env:BUILD_SOURCEVERSIONMESSAGE
        }
    }
    else {
        @{
            BHBranchName = $((git rev-parse --abbrev-ref HEAD).Trim())
            BHPSModuleManifest = "$env:BuildScriptPath\$env:BuildProjectName\$env:BuildProjectName.psd1"
            BHPSModulePath = "$env:BuildScriptPath\$env:BuildProjectName"
            BHProjectName = $env:BuildProjectName
            BHBuildNumber = 'Unknown'
            BHModulePath = "$env:BuildScriptPath\$env:BuildProjectName"
            BHBuildOutput = "$env:BuildScriptPath\BuildOutput"
            BHBuildSystem = [System.Environment]::MachineName
            BHProjectPath = $env:BuildScriptPath
            BHCommitMessage = $((git log --format=%B -n 1).Trim())
        }
    }
    Add-Heading 'Setting environment variables if needed'
    foreach ($var in $gitVars.Keys) {
        if (-not (Test-Path Env:\$var)) {
            Set-EnvironmentVariable $var $gitVars[$var]
        }
    }
}
