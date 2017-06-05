# Grab nuget bits, install modules, set build variables, start build.
Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

Install-Module InvokeBuild, PSDeploy, Pester, BuildHelpers -Force -SkipPublisherCheck -AllowClobber
Import-Module InvokeBuild, BuildHelpers

Set-BuildEnvironment

Invoke-Build Build .\.build.ps1
exit ( [int]( -not $psake.build_success ) )