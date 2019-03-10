$heading = {
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
$summary = {
    param(
        [parameter(Position = 0)]
        [String]
        $Project,
        [parameter(Position = 1,ValueFromRemainingArguments)]
        [String[]]
        $State
    )
    &$heading Environment Summary
    @(
        "Project : $Project"
        "State   : $($State -join " ")"
        "Engine  : PowerShell $($PSVersionTable.PSVersion.ToString())"
        "Host OS : $(if($PSVersionTable.PSVersion.Major -le 5 -or $IsWindows){"Windows"}elseif($IsLinux){"Linux"}elseif($IsMacOS){"macOS"}else{"[UNKNOWN]"})"
        "PWD     : $PWD"
        ''
    ) | Write-Host
}
$log = {
    param(
        [parameter(Mandatory,Position = 0,ValueFromRemainingArguments)]
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
        $NoDate
    )
    if ($Severe) {
        $fg = 'Red'
        $lvl = '[ERROR] '
    }
    elseif ($Warning) {
        $fg = 'Yellow'
        $lvl = '[WARNING] '
    }
    elseif ($Cmd) {
        $fg = 'Magenta'
        $lvl = 'PS > '
    }
    else {
        $fg = 'White'
        $lvl = '[INFO] '
    }
    $fmtMsg = if ($NoDate) {
        $Message
    }
    else {
        "[$((Get-Date).ToString("HH:mm:ss")) +$(((Get-Date) - (Get-Date $env:_BuildStart)).ToString())] $($lvl.ToUpper())$Message"
    }
    Write-Host -ForegroundColor $fg $fmtMsg
}
$setEnvVar = {
    param(
        [parameter(Position = 0)]
        [String]
        $Name,
        [parameter(Position = 1,ValueFromRemainingArguments)]
        [String[]]
        $Value
    )
    $fullVal = $Value -join " "
    &$log "Setting env variable '$Name' to '$fullVal'"
    Set-Item -Path Env:\$Name -Value $fullVal -Force
    if (Test-Path Env:\TF_BUILD) {
        "##vso[task.setvariable variable=$Name]$fullVal" | Write-Host
    }
}
&$heading 'Setting environment variables if needed'
$gitVars = if (Test-Path Env:\TF_BUILD) {
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
foreach ($var in $gitVars.Keys) {
    if (-not (Test-Path Env:\$var)) {
        &$setEnvVar $var $gitVars[$var]
    }
}

Set-Location $env:BuildScriptPath