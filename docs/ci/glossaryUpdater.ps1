#region purpose: Unload / load module
Remove-Module VaporShell -ErrorAction SilentlyContinue -Verbose:$false
if ($env:OS -like "*Windows*") {
    Set-Location E:\Git\VaporShell
}
else {
    Set-Location $PSScriptRoot
    Set-Location ..
}
Write-Host -ForegroundColor Green "Location set to $($pwd.Path)"
Write-Host -ForegroundColor Green "Importing VaporShell"
#. .\build.ps1
Import-Module E:\Git\VaporShell\BuildOutput\VaporShell -Force
Write-Host -ForegroundColor Green "Importing platyPS"
Import-Module platyPS, PoshRSJob
#endregion#>


Get-ChildItem "E:\Git\VaporShell.io\docs\glossary" -Exclude "index.md" | Remove-Item -Force -Verbose
<#
$staging = Get-ChildItem "E:\Git\VaporShell.io\_ignored\staging_glossary"
$lastCommandDone = $staging | Where-Object {$_.}
if ($lastCommandDone) {
    $staging | Remove-Item -Force -Verbose
}
#>

$vsCommands = (Get-ChildItem 'E:\Git\VaporShell\VaporShell\Public' -Filter '*.ps1' -Recurse).BaseName
$i = 0

$vsCommands | Start-RSJob -Name {$_} -ModulesToImport platyPS,'E:\Git\VaporShell\BuildOutput\VaporShell' -ScriptBlock {
    New-MarkdownHelp -Command "VaporShell\$_" -Force -NoMetadata -OutputFolder "E:\Git\VaporShell.io\docs\glossary" -Verbose
} | Wait-RSJob | Receive-RSJob | ForEach-Object {
    $i++
    "[$i/$($vsCommands.Count)] Completed: $_"
}

Get-RSJob | Remove-RSJob

$files = Get-ChildItem "E:\Git\VaporShell.io\docs\glossary" -Exclude "index.md"

foreach ($file in $files) {
    Write-Host -ForegroundColor Cyan "Updating $($file.BaseName)"

    $md = Get-Content $file.FullName
    if ($md -match [RegEx]::Escape('PS C:\> {{ Add example code here }}')) {
        $updated = [System.Collections.Generic.List[string]]::new()
        $exStart = [array]::IndexOf($md,'## EXAMPLES')
        $parStart = [array]::IndexOf($md,'## PARAMETERS')
        $md[0..($exStart-1)] | ForEach-Object {
            $updated.Add($_)
        }
        $md[$parStart..($md.Count-1)] | ForEach-Object {
            $updated.Add($_)
        }
        $updated | Set-Content $file.FullName -Force
    }
    else {
        $md | Set-Content $file.FullName -Force
    }
}

Set-Location $PSScriptRoot
Set-Location ..
