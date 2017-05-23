# Grab nuget bits, install modules, set build variables, start build.
Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

Install-Module Psake, PSDeploy, Pester, BuildHelpers -Force -SkipPublisherCheck -AllowClobber
Import-Module Psake, BuildHelpers

Set-BuildEnvironment

Invoke-psake .\psake.ps1
exit ( [int]( -not $psake.build_success ) )