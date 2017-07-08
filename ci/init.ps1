param($Task = 'Default')

if ($env:TRAVIS) {
    Write-Host -ForegroundColor Yellow "============================
    Build system: Travis CI
============================"
    # Install InvokeBuild
    Install-Module InvokeBuild, Pester -Scope CurrentUser -Force -AllowClobber

    # Build the code and perform tests
    Import-module InvokeBuild
    
    Set-Location $PSScriptRoot

    Invoke-Build -Safe -Result Result -File .\travis.build.ps1
    if ($Result.Error) {
        # build failed, $Result.Error is the error
    }
    else {
        # build succeeded
    }
}
else {
    if ($env:APPVEYOR) {
        $BS = "AppVeyor"
    } 
    else {
        $BS = "Unknown"
    }
    Write-Host -ForegroundColor Magenta "============================
    Build system: $BS
============================"
    # Grab nuget bits, install modules, set build variables, start build.
    Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

    Install-Module Psake, PSDeploy, Pester, BuildHelpers, Coveralls -Force -Scope CurrentUser
    Import-Module Psake, BuildHelpers, Coveralls

    Set-BuildEnvironment

    Set-Location $PSScriptRoot

    Invoke-psake .\psake.ps1 -taskList $Task -nologo
    exit ( [int]( -not $psake.build_success ) )
}