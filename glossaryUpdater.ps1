#region purpose: Unload / load module
Remove-Module Vaporshell -ErrorAction SilentlyContinue -Verbose:$false
if ($env:OS -like "*Windows*") {
    Set-Location C:\GDrive\PSModules\Vaporshell
}
else {
    Set-Location $PSScriptRoot
    Set-Location ..
}
Write-Host -ForegroundColor Green "Location set to $($pwd.Path)"
Write-Host -ForegroundColor Green "Importing Vaporshell"
Import-Module .\Vaporshell\Vaporshell.psd1 -Verbose
Write-Host -ForegroundColor Green "Importing platyPS"
Import-Module platyPS
#endregion#>


New-MarkdownHelp -Module Vaporshell -Force -OutputFolder "C:\GDrive\PSModules\Vaporshell.io\docs\glossary" -Verbose

$files = Get-ChildItem "C:\GDrive\PSModules\Vaporshell.io\docs\glossary"

foreach ($file in $files) {
    Write-Host -ForegroundColor Cyan "Updating $($file.BaseName)"
    [System.Collections.ArrayList]$md = "---","layout: glossary","title: $($file.BaseName)","categories: glossary"

    $md += Get-Content $file.FullName | Select-Object -Skip 4

    $start = [array]::IndexOf($md,'## EXAMPLES')

    do {
        #Write-Host -ForegroundColor Yellow "Removing $($md[$start])"
        $md.RemoveAt($start)
    }
    until (($md[$start] -eq ,'## PARAMETERS'))

    $md | Set-Content $file.FullName -Force
}