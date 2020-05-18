$docsPath = (Resolve-Path "$($PSScriptRoot)/..").Path
$basePath = (Resolve-Path "$($docsPath)/..").Path

Push-Location $basePath

if ((Get-PSRepository -Name PSGallery).InstallationPolicy -ne 'Trusted') {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -Verbose:$false
}
try {
    $null = Get-PackageProvider -Name Nuget -ForceBootstrap -Verbose:$false -ErrorAction Stop
}
catch {
    throw
}

'platyPS','PoshRSJob' | ForEach-Object {
    Write-Host "[$_] Resolving module"
    Install-Module $_ -Repository PSGallery -Scope CurrentUser -ErrorAction SilentlyContinue
    Import-Module $_
}

#region purpose: Unload / load module
if (Get-Module VaporShell*) {
    Remove-Module VaporShell -ErrorAction SilentlyContinue -Verbose:$false
}

Write-Host -ForegroundColor Green "Location set to $($pwd.Path)"
Write-Host -ForegroundColor Green "Building and importing VaporShell"
. .\build.ps1
Import-Module "$($basePath)/BuildOutput/VaporShell" -Force
#endregion#>

Write-Host -ForegroundColor Magenta "Removing existing glossary docs"
Get-ChildItem "$($docsPath)/docs/glossary" -Exclude "index.md" | Remove-Item -Force

$vsCommands = (Get-ChildItem "$($basePath)/VaporShell/Public" -Filter '*.ps1' -Recurse).BaseName

Write-Host -ForegroundColor Green "Starting runspaces to build the updated docs"
$vsCommands | Start-RSJob -Name {$_} -Verbose -ModulesToImport platyPS,"$basePath\BuildOutput\VaporShell" -VariablesToImport docsPath -ScriptBlock {
    Write-Output "Working on: $($_)"
    New-MarkdownHelp -Command "VaporShell\$_" -Force -NoMetadata -OutputFolder "$($docsPath)\docs\glossary"
} | Receive-RSJob

Get-RSJob | Wait-RSJob | Remove-RSJob

$files = Get-ChildItem "$($docsPath)/docs/glossary" -Exclude "index.md"

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

Set-Location $basePath
