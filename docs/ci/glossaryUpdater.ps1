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
#. .\build.ps1
Import-Module "$($basePath)/BuildOutput/VaporShell" -Force
#endregion#>

Write-Host -ForegroundColor Magenta "Removing existing glossary docs"
Get-ChildItem "$($docsPath)/docs/glossary" -Exclude "index.md" | Remove-Item -Force

$vsCommands = (Get-ChildItem "$($basePath)/VaporShell/Public" -Filter '*.ps1' -Recurse).BaseName
$i = 0

Write-Host -ForegroundColor Green "Starting runspaces to build the updated docs"
$vsCommands | Start-RSJob -Name {"VaporShell\$_"} -ModulesToImport platyPS,"$basePath\BuildOutput\VaporShell" -VariablesToImport docsPath -ScriptBlock {
    New-MarkdownHelp -Command "VaporShell\$_" -Force -NoMetadata -OutputFolder "$($docsPath)\docs\glossary"
} | Receive-RSJob | ForEach-Object {
    $i++
    "[$i/$($vsCommands.Count)] Completed: $($_.FullName -replace ([regex]::Escape("$docsPath$([System.IO.Path]::DirectorySeparatorChar)")))"
}
Get-RSJob -State Failed,Completed | Where-Object {$_.Name -notmatch 'PSProfile'} | Remove-RSJob

do {
    $jobs = Get-RSJob | Where-Object {$_.Name -notmatch 'PSProfile'}
    $jobs | Receive-RSJob | ForEach-Object {
        $i++
        "[$i/$($vsCommands.Count)] Completed: $($_.FullName -replace ([regex]::Escape("$docsPath$([System.IO.Path]::DirectorySeparatorChar)")))"
    }
    Start-Sleep -Seconds 5
}
until ($null -eq ($jobs.State | Where-Object {$_ -notmatch '(Completed|Failed)'}))
Get-RSJob | Where-Object {$_.Name -notmatch 'PSProfile'} | Remove-RSJob

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
