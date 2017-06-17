$files = Get-ChildItem "C:\GDrive\PSModules\Vaporshell.io\docs\glossary"

foreach ($file in $files) {
    Write-Host -ForegroundColor Cyan "Updating $($file.BaseName)"
    [System.Collections.ArrayList]$md = "---","layout: pagenodesc","title: $($file.BaseName)","categories: glossary"

    $md += Get-Content $file.FullName | Select-Object -Skip 4

    $start = [array]::IndexOf($md,'## EXAMPLES')

    do {
        #Write-Host -ForegroundColor Yellow "Removing $($md[$start])"
        $md.RemoveAt($start)
    }
    until (($md[$start] -eq ,'## PARAMETERS'))

    $md | Set-Content $file.FullName -Force
}