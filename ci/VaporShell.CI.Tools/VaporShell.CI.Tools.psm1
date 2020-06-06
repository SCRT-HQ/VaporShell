Get-ChildItem $(Split-Path $PSScriptRoot) -Filter 'https*scrthq*.ps1' | ForEach-Object {
    Write-Host -ForegroundColor Magenta "Importing AzurePipelines helpers: $($_.BaseName)"
    . $_.FullName
}

Get-ChildItem $([System.IO.Path]::Combine($PSScriptRoot,'Public')) -Filter '*.ps1' | ForEach-Object {
    Write-Host -ForegroundColor Magenta "Importing CI function: $($_.BaseName)"
    . $_.FullName
}
