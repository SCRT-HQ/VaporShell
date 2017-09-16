# Make sure the module is not loaded
Remove-Module VaporShell -ErrorAction SilentlyContinue
# Download latest version
$webclient = New-Object System.Net.WebClient
$url = "https://github.com/scrthq/VaporShell/archive/master.zip"
Write-Host "Downloading latest version of VaporShell from $url" -ForegroundColor Cyan
$file = "$($env:TEMP)\VaporShell.zip"
$webclient.DownloadFile($url,$file)
Write-Host "File saved to $file" -ForegroundColor Green
# Unblock and Decompress
Unblock-File -Path $file
$targetondisk = "$($env:USERPROFILE)\Documents\WindowsPowerShell\Modules"
New-Item -ItemType Directory -Force -Path $targetondisk | out-null
$shell_app=new-object -com shell.application
$zip_file = $shell_app.namespace($file)
Write-Host "Uncompressing the Zip file to $($targetondisk)" -ForegroundColor Cyan
$destination = $shell_app.namespace($targetondisk)
$destination.Copyhere($zip_file.items(), 0x10)
# Rename and import
Write-Host "Renaming folder" -ForegroundColor Cyan
Rename-Item -Path ($targetondisk+"\VaporShell-master") -NewName "VaporShell" -Force
Write-Host "Module has been installed" -ForegroundColor Green
Import-Module -Name VaporShell