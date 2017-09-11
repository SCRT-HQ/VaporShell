function ColorizeStackEvents {
    Param
    (
        [parameter(Mandatory = $true,Position = 0,ValueFromPipeline = $true)]
        [Object[]]
        $Events,
        [parameter(Mandatory = $false)]
        [String]
        $StackId,
        [parameter(Mandatory = $false)]
        [switch]
        $IncludeStopNotice
    )
    Begin {
        $eventArray = @()
        $header = @()
        if ($IncludeStopNotice) {
            $header += "~ ~ ~ ~ ~ TO RETURN TO THE PROMPT, PRESS CTRL+C AT ANYTIME ~ ~ ~ ~ ~"
        }
        if ($StackId) {
            $header += "STACK ID:   $StackId"
        }
            $header += "REFRESHED:  $(Get-Date -Format G)"
    }
    Process {
        foreach ($e in $Events) {
            $eventArray += $e
        }
        $stack = $eventArray | Sort-Object timestamp | Select-Object Timestamp,ResourceStatus,StackName,ResourceType,ResourceStatusReason | Format-Table -AutoSize
        $header += ($stack | Out-String) -split "`n" | Where-Object {$_}
    }
    End {
        
        foreach ($row in $header) {
            if ($row -like "STACK ID:*" -or $row -like "REFRESHED:*") {
                Write-Host -ForegroundColor Black -BackgroundColor Magenta $row
            }
            elseif ($row -like "*TO RETURN TO THE PROMPT*") {
                Write-Host -ForegroundColor DarkGreen -BackgroundColor Cyan $row
            }
            elseif ($row -like "*Timestamp*" -or $row -like "-----*") {
                Write-Host -ForegroundColor Black -BackgroundColor Cyan $row
            }
            elseif ($row -like "*FAILED*") {
                Write-Host -ForegroundColor Black -BackgroundColor Red $row
            }
            elseif ($row -like "*CREATE_IN_PROGRESS*") {
                Write-Host -ForegroundColor Green $row
            }
            elseif ($row -like "*CREATE_COMPLETE*") {
                Write-Host -BackgroundColor Green -ForegroundColor Black $row
            }
            elseif ($row -like "*DELETE_IN_PROGRESS*") {
                Write-Host -ForegroundColor Yellow $row
            }
            elseif ($row -like "*DELETE_COMPLETE*") {
                Write-Host -BackgroundColor Yellow -ForegroundColor Black $row
            }
            else {
                Write-Host $row
            }
        }
    }
}