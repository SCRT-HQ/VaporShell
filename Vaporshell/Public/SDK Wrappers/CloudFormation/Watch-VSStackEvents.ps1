function Watch-VSStackEvents {
    Param
    (
        [parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [Alias("StackName")]
        [String]
        $StackId,
        [parameter(Mandatory = $false,Position = 1)]
        [Switch]
        $InNewWindow,
        [parameter(Mandatory = $false)]
        [Int]
        $RefreshRate = 2,
        [parameter(Mandatory = $false)]
        [Int]
        $TimeoutInMinutes = 60
    )
    if ($InNewWindow) {
        if ($Env:OS -and ($Env:OS -notlike "*Windows*")) {
            Write-Warning "You must be running Windows to use the '-InNewWindow' parameter -- returning to prompt"
            return
        }
        else {
            $command = "Import-Module `"$($Script:VaporshellPath)\Vaporshell.psd1`" -ArgumentList `$false,`$true -Verbose:`$false;Clear-Host;. `"$($Script:VaporshellPath)\bin\SetWatchWindow.ps1`";while(`$true){Get-VSStack -Events -StackId '$StackId' -ColorizeEvents -IncludeStopNotice;Start-Sleep $RefreshRate;Clear-Host}"
            Start-Process powershell -ArgumentList "-noprofile -noexit -command & {$command}"
        }
    }
    else {
        Clear-Host
        while ($true){
            Get-VSStack -Events -StackId "$StackId" -ColorizeEvents -IncludeStopNotice
            Start-Sleep $RefreshRate
            Clear-Host
        }
    }
}