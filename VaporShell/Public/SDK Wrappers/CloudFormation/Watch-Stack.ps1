function Watch-Stack {
    <#
    .SYNOPSIS
    Watches Stack Events as they happen. Colorizes events based on event type.

    .PARAMETER StackId
    The Stack ID or name of the stack that you'd like to watch events for.

    .PARAMETER InNewWindow
    WINDOWS ONLY (For now). Watch events in a new PowerShell window. So you can continue working in your current console.

    .PARAMETER IncludeBlankResourceStatusReasons
    If passed/set to $true, this will also output CREATE_IN_PROGRESS events that do not include a ResourceStatusReason. All other ResourceStatuses

    .PARAMETER RefreshRate
    The rate in seconds that you'd like the event list to poll for new events. Defaults to 2.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
    Param
    (
        [parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [Alias("StackId")]
        [String]
        $StackName,
        [parameter(Mandatory = $false)]
        [Switch]
        $InNewWindow,
        [parameter(Mandatory = $false)]
        [Switch]
        $IncludeBlankResourceStatusReasons,
        [parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [Int]
        $RefreshRate = 2,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    if ($InNewWindow) {
        if ($Env:OS -and ($Env:OS -notlike "*Windows*")) {
            Write-Warning "You must be running Windows to use the '-InNewWindow' parameter -- returning to prompt"
            return
        }
        else {
            $conEmu = "$env:programfiles\ConEmu\Conemu64.exe"
            $command = "Import-Module `"$($Script:VaporshellPath)\Vaporshell.psd1`" -ArgumentList `$false,`$true -Verbose:`$false;Clear-Host;. '$($Script:VaporshellPath)\bin\SetWatchWindow.ps1' -StackId '$StackName';Watch-Stack -StackName '$StackName' -RefreshRate $RefreshRate"
            if ($ProfileName) {
                $command += " -ProfileName '$ProfileName'"
            }
            $poshArg = "-noprofile -noexit -command & {$command}"
            if ($env:ConEmuBaseDir) {
                $poshArg += " -new_console:t:`"$StackName`""
            }
            if ((Test-Path $conEmu) -and !$env:ConEmuBaseDir) {
                Start-Process $conEmu -ArgumentList '/title',"`"$StackName`"",'/cmd','powershell.exe','-noexit','-command',"& {$command}"
            }
            else {
                Start-Process powershell -ArgumentList $poshArg
            }
        }
    }
    else {
        $i = 0
        $cont = $true
        $prof = @{}
        if ($ProfileName) {
            $prof["ProfileName"] = $ProfileName
        }
        $strings = @()
        $head = "`nSTACK NAME : $StackName`nREFRESH    : $RefreshRate seconds`n"
        Colorize $head
        $private:tableHeaderAdded = $false
        do {
            try {
                $results = Get-VSStack -Events -StackId "$StackName" @prof -ErrorAction Stop -Verbose:$false | Sort-Object timestamp
                $StackName = $results[0].StackId
                $snLength = $results[0].StackName.Length
                $resTypeLength = ($results.ResourceType | Sort-Object -Property Length)[-1].Length
                if ($resTypeLength -le 26) {
                    $resTypeLength = 26
                }
                $stack = $results | Sort-Object TimeStamp | ForEach-Object {
                    if (!$private:tableHeaderAdded) {
                        "{0,-20} {1,-20} {2,-$($snLength)} {3,-$resTypeLength} {4,-35}" -f 'Timestamp','ResourceStatus','StackName','ResourceType','ResourceStatusReason'
                        "{0,-20} {1,-20} {2,-$($snLength)} {3,-$resTypeLength} {4,-35}" -f '---------','--------------','---------','------------','--------------------'
                        $private:tableHeaderAdded = $true
                    }
                    if ($_.ResourceStatus -ne 'CREATE_IN_PROGRESS' -or $_.ResourceStatusReason -or ($_.ResourceStatus -eq 'CREATE_IN_PROGRESS' -and $PSBoundParameters['IncludeBlankResourceStatusReasons'])) {
                        $formatted = "{0,-20} {1,-20} {2,-$($snLength)} {3,-$resTypeLength} {4,-35}" -f $_.Timestamp,$_.ResourceStatus,$_.StackName,$_.ResourceType,$_.ResourceStatusReason
                        if ($strings -notcontains $formatted.Replace(' ','')) {
                            $formatted.Trim()
                            $strings += $formatted.Replace(' ','')
                        }
                    }
                }
                Colorize $stack
                if ($i -ge 1 -and ($stack -clike '*_COMPLETE*AWS::CloudFormation::Stack*' -or $stack -clike '*Stack creation time exceeded the specified timeout*')) {
                    $cont = $false
                }
                else {
                    Start-Sleep $RefreshRate
                    $i++
                }
            }
            catch {
                $PSCmdlet.ThrowTerminatingError($_)
                $cont = $false
            }
        }
        until ($cont -eq $false)
    }
}
