function Colorize {
    Param
    (
        [parameter(Mandatory = $false,Position = 0,ValueFromPipeline = $true)]
        [String[]]
        $Strings
    )
    
    Process {
        foreach ($row in $Strings) {
            if ($row -like "*STACK NAME *" -or $row -like "*REFRESH *") {
                Write-Host -ForegroundColor Black -BackgroundColor Cyan $row
            }
            elseif ($row -like "*FAILED*") {
                Write-Host -ForegroundColor Black -BackgroundColor Red $row
            }
            elseif ($row -like "*REVIEW_IN_PROGRESS*") {
                Write-Host -ForegroundColor Black -BackgroundColor Gray $row
            }
            elseif ($row -like "*ROLLBACK_IN_PROGRESS*") {
                Write-Host -ForegroundColor Cyan $row
            }
            elseif ($row -like "*ROLLBACK_COMPLETE*") {
                Write-Host -BackgroundColor Cyan -ForegroundColor Black $row
            }
            elseif ($row -like "*UPDATE_IN_PROGRESS*") {
                Write-Host -ForegroundColor Green $row
            }
            elseif ($row -like "*UPDATE_COMPLETE*") {
                Write-Host -BackgroundColor Green -ForegroundColor Black $row
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
            elseif ($row -like "*DELETE_SKIPPED*") {
                Write-Host -BackgroundColor Magenta -ForegroundColor Black $row
            }
            elseif ($row -like "*DELETE_SKIPPED*") {
                Write-Host -BackgroundColor Magenta -ForegroundColor Black $row
            }
            elseif ($row -like "Timestamp*" -or $row -like "---------*") {
                Write-Host $row
            }
            else {
                Write-Host $row
            }
        }
    }
}