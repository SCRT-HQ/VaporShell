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

'PoshRSJob' | ForEach-Object {
    Write-Host "[$_] Resolving module"
    try {
        Import-Module $_ -ErrorAction Stop
    }
    catch {
        Install-Module $_ -Repository PSGallery -Scope CurrentUser
        Import-Module $_
    }
}

#region purpose: Unload / load module
if (Get-Module VaporShell*) {
    Remove-Module VaporShell -ErrorAction SilentlyContinue -Verbose:$false
}

Write-Host -ForegroundColor Green "Location set to $($pwd.Path)"
Write-Host -ForegroundColor Green "Building and importing VaporShell"
. ./build.ps1
$buildOutput = Join-Path $basePath 'BuildOutput'
#endregion#>

$modules = Get-ChildItem $buildOutput -Filter 'VaporShell*' -Directory | Select-Object -ExpandProperty Name

Write-Host -ForegroundColor Magenta "Removing existing glossary docs"
Get-ChildItem "$($docsPath)/docs/glossary" -Exclude "index.md" | Remove-Item -Force -Recurse

Write-Host -ForegroundColor Green "Importing New-MDFunctionHelp"
. (Join-Path $PSScriptRoot 'New-MDFunctionHelp.ps1')

Write-Host -ForegroundColor Green "Starting runspaces to build the updated docs"
$modules | Start-RSJob -Name {$_} -FunctionsToImport 'New-MDFunctionHelp' -VariablesToImport 'buildOutput','docsPath' -ScriptBlock {
    $module = $_
    if ($env:PSModulePath -notmatch ([Regex]::Escape($buildOutput))) {
        $env:PSModulePath = ($buildOutput,$env:PSModulePath) -join [System.IO.Path]::PathSeparator
    }
    Import-Module (Join-Path $buildOutput 'VaporShell') -Force
    if ($module -ne 'VaporShell') {
        Import-Module (Join-Path $buildOutput $module) -Force
    }
    $commands = Get-Command -Module $module
    foreach ($command in $commands) {
        $targetPath = [System.IO.Path]::Combine($docsPath,'docs','glossary',$module)
        if (-not (Test-Path $targetPath)) {
            $null = New-Item $targetPath -ItemType Directory -Force
        }
        Get-Help "$($command.Namespace)\$($command.Name)" -Full |
            New-MDFunctionHelp |
            Set-Content "$($targetPath)/$($command.Name).md" -Encoding utf8 -Force
        "Created: $($targetPath)/$($command.Name).md"
    }
} | Receive-RSJob
Get-RSJob -State Failed,Completed | Where-Object {$_.Name -notmatch 'PSProfile'} | Remove-RSJob

$completed = @()
$failed = @()
do {
    $jobs = Get-RSJob | Where-Object {$_.Name -notmatch 'PSProfile'}
    $jobs | Where-Object {$_.State -match '(Completed|Failed)'} | ForEach-Object {
        switch ($_.State) {
            Completed {
                Write-Host -ForegroundColor Green "$($_.State): $($_.Name)"
                $completed += $_
            }
            default {
                Write-Host -ForegroundColor Yellow "$($_.State): $($_.Name)"
                $failed += $_
            }
        }
        $_ | Receive-RSJob
    }
    Start-Sleep -Seconds 1
}
until ($null -eq ($jobs.State | Where-Object {$_ -notmatch '(Completed|Failed)'}))
Get-RSJob | Where-Object {$_.Name -notmatch 'PSProfile'} | Remove-RSJob

Set-Location $basePath
