function Watch-Stack {
    <#
    .SYNOPSIS
    Watches Stack Events as they happen. Colorizes events based on event type.
    
    .PARAMETER StackId
    The Stack ID or name of the stack that you'd like to watch events for.
    
    .PARAMETER InNewWindow
    WINDOWS ONLY (For now). Watch events in a new PowerShell window. So you can continue working in your current console.
    
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
            $command = "Import-Module `"$($Script:VaporshellPath)\Vaporshell.psd1`" -ArgumentList `$false,`$true -Verbose:`$false;Clear-Host;. '$($Script:VaporshellPath)\bin\SetWatchWindow.ps1' -StackId '$StackName';Watch-Stack -StackName '$StackName' -RefreshRate $RefreshRate"
            if ($ProfileName) {
                $command += " -ProfileName '$ProfileName'"
            }
            $poshArg = "-noprofile -noexit -command & {$command}"
            if ($env:ConEmuBaseDir) {
                $poshArg += " -new_console:t:`"$StackName`""
            }
            Start-Process powershell -ArgumentList $poshArg
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
        $head = "`nSTACK NAME : $StackName`nREFRESH  : $RefreshRate seconds`n"
        Colorize $head
        do {
            try {
                $results = Get-VSStack -Events -StackId "$StackName" @prof -ErrorAction Stop -Verbose:$false
                $StackName = $results[0].StackId
                $stack = ($results | Sort-Object timestamp | Select-Object Timestamp,ResourceStatus,StackName,ResourceType,ResourceStatusReason | Format-Table -AutoSize | Out-String) -split "`n" | Where-Object {!([String]::IsNullOrWhiteSpace($_)) -and $strings -notcontains $_.Trim()}
                $strings += $stack | ForEach-Object {$_.Trim()}
                Colorize $stack
                if ($i -ge 1 -and $stack -clike '*_COMPLETE*AWS::CloudFormation::Stack*') {
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