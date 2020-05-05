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
    [CmdletBinding()]
    Param (
        [parameter(Mandatory = $true, Position = 0, ValueFromPipelineByPropertyName = $true, ValueFromPipeline = $true)]
        [Alias("StackId")]
        [String[]]
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
    Begin {
        Import-AWSSDK -Verbose:$false
    }
    Process {
        if ($InNewWindow) {
            foreach ($stckName in $StackName) {
                if ($Env:OS -and ($Env:OS -notlike "*Windows*")) {
                    Write-Warning "You must be running Windows to use the '-InNewWindow' parameter -- returning to prompt"
                    return
                }
                else {
                    $conEmu = "$env:programfiles\ConEmu\Conemu64.exe"
                    $command = "Import-Module `"$($Script:VaporshellPath)\Vaporshell.psd1`" -ArgumentList `$false,`$true -Verbose:`$false;Clear-Host;. '$($Script:VaporshellPath)\bin\SetWatchWindow.ps1' -StackId '$stckName';Watch-Stack -StackName '$stckName' -RefreshRate $RefreshRate"
                    if ($ProfileName) {
                        $command += " -ProfileName '$ProfileName'"
                    }
                    $poshArg = "-noprofile -noexit -command & {$command}"
                    if ($env:ConEmuBaseDir) {
                        $poshArg += " -new_console:t:`"$stckName`""
                    }
                    if ((Test-Path $conEmu) -and !$env:ConEmuBaseDir) {
                        Start-Process $conEmu -ArgumentList '/title',"`"$stckName`"",'/cmd','powershell.exe','-noexit','-command',"& {$command}"
                    }
                    else {
                        Start-Process powershell -ArgumentList $poshArg
                    }
                }
            }
        }
        else {
            $i = 0
            $cont = $true
            $prof = @{
                Verbose = $false
            }
            if ($ProfileName) {
                $prof["ProfileName"] = $ProfileName
            }
            $strings = @()
            $head="`nSTACK NAME(S) : $($StackName -join ", ")`n" +
                    "REFRESH       : $RefreshRate seconds`n"
            Colorize $head
            $private:tableHeaderAdded = $false
            $private:nameIdMap = @{}
            $stcks = $StackName
            do {
                do {
                    $completed = @()
                    foreach ($stckName in $stcks) {
                        try {
                            if ($private:nameIdMap.ContainsKey($stckName)) {
                                $results = Get-VSStack -Events -StackId $private:nameIdMap[$stckName] @prof -ErrorAction Stop | Sort-Object timestamp
                            }
                            else  {
                                $results = Get-VSStack -Events -StackId "$stckName" @prof -ErrorAction Stop | Sort-Object timestamp
                                $private:nameIdMap[$stckName] = $results[0].StackId
                            }
                            $stName = $results[0].StackId
                            $snLength = $results[0].StackName.Length
                            $resTypeLength = ($results.LogicalResourceId | Where-Object {$_ -ne $results[0].StackName} | Sort-Object -Property Length)[-1].Length
                            if ($resTypeLength -le 26) {
                                $resTypeLength = 26
                            }
                            $stack = $results | Sort-Object TimeStamp | ForEach-Object {
                                if (!$private:tableHeaderAdded) {
                                    "{0,-20} {1,-20} {2,-$($snLength)} {3,-$resTypeLength} {4,-35}" -f 'Timestamp','ResourceStatus','StackName','LogicalId','ResourceStatusReason'
                                    "{0,-20} {1,-20} {2,-$($snLength)} {3,-$resTypeLength} {4,-35}" -f '---------','--------------','---------','------------','--------------------'
                                    $private:tableHeaderAdded = $true
                                }
                                $identifier = if ($_.LogicalResourceId -eq $results[0].StackName) {
                                    'AWS::CloudFormation::Stack'
                                }
                                else {
                                    $_.LogicalResourceId
                                }
                                if ($_.ResourceStatus -ne 'CREATE_IN_PROGRESS' -or $_.ResourceStatusReason -or ($_.ResourceStatus -eq 'CREATE_IN_PROGRESS' -and $PSBoundParameters['IncludeBlankResourceStatusReasons'])) {
                                    $formatted = "{0,-20} {1,-20} {2,-$($snLength)} {3,-$resTypeLength} {4,-35}" -f $_.Timestamp,$_.ResourceStatus,$_.StackName,$identifier,$_.ResourceStatusReason
                                    if ($strings -notcontains $formatted.Replace(' ','')) {
                                        $formatted.Trim()
                                        $strings += $formatted.Replace(' ','')
                                    }
                                }
                            }
                            Colorize $stack
                            if ($i -ge 1 -and ($stack -match '.*_(COMPLETE|FAILED).*AWS::CloudFormation::Stack.*' -or $null -eq $stack)) {
                                $stackStatus = (Get-VSStack -StackId "$stName" @prof).StackStatus.Value
                                if ($stackStatus -match '.*_(COMPLETE|FAILED)$') {
                                    Write-Verbose "[$stckName] Stack status: $stackStatus"
                                    $cont = $false
                                    $completed += $stckName
                                }
                                else {
                                    Start-Sleep $RefreshRate
                                }
                            }
                            else {
                                Start-Sleep $RefreshRate
                            }
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError($_)
                            $cont = $false
                        }
                    }
                    $i++
                    $stcks = $stcks | Where-Object {$_ -notin $completed}
                }
                until ($cont -eq $false)
                if ($completed.Count -and $i -ge 1) {
                    $message = "$($stcks.Count) stacks remaining"
                    if ($stcks.Count) {
                        $message += ": [ $($stcks -join ', ') ]"
                    }
                    Write-Verbose $message
                }
            }
            until ($null -eq $stcks)
        }
    }
}
