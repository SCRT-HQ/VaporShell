﻿# PSake makes variables declared here available in other scriptblocks
# Init some things
Properties {
    # Find the build folder based on build system
        $ProjectRoot = $ENV:BHProjectPath
        if(-not $ProjectRoot) {
            if ($pwd.Path -like "*ci*") {
                Set-Location ..
            }
            $ProjectRoot = $pwd.Path
        }

    $Timestamp = Get-Date -Uformat "%Y%m%d-%H%M%S"
    $PSVersion = $PSVersionTable.PSVersion.Major
    $TestFile = "TestResults_PS$PSVersion`_$TimeStamp.xml"
    $lines = '----------------------------------------------------------------------'

    $Verbose = @{}
    if($ENV:BHCommitMessage -match "!verbose")
    {
        $Verbose = @{Verbose = $True}
    }
}

Task Default -Depends Init,Test,Build,Deploy

Task Init {
    $lines
    Install-Module Coveralls -Force
    Import-Module Coveralls -Force
    Set-Location $ProjectRoot
    "Build System Details:"
    Get-Item ENV:BH*
    "`n"
}

Task Test -Depends Init  {
    $lines
    "`n`tSTATUS: Testing with PowerShell $PSVersion"

    # Gather test results. Store them in a variable and file
    $TestResults = Invoke-Pester -Path $ProjectRoot\Tests -PassThru -OutputFormat NUnitXml -OutputFile "$ProjectRoot\$TestFile" -CodeCoverage "$ProjectRoot\Vaporshell\Public\Condition Functions\*","$ProjectRoot\Vaporshell\Public\Intrinsic Functions\*","$ProjectRoot\Vaporshell\Public\Primary Functions\*","$ProjectRoot\Vaporshell\Public\Transform\*","$ProjectRoot\Vaporshell\Public\*-Vaporshell.ps1","$ProjectRoot\Vaporshell\Vaporshell.psm1"

    # In Appveyor?  Upload our tests! #Abstract this into a function?
    If($ENV:BHBuildSystem -eq 'AppVeyor')
    {
        (New-Object 'System.Net.WebClient').UploadFile(
            "https://ci.appveyor.com/api/testresults/nunit/$($env:APPVEYOR_JOB_ID)",
            "$ProjectRoot\$TestFile" )
        
        #$files = Get-ChildItem "$ProjectRoot\Vaporshell" -Include *.ps1,*.psm1 -Recurse | Where-Object {$_.Name -notlike "Add-VS*" -and $_.Name -notlike "New-VS*" -and $_.FullName -notlike "*\Private\*" -and $_.Name -ne "Update-VSResourceFunctions.ps1"}
        #$coverage = Format-Coverage -Include $files -CoverallsApiToken $ENV:Coveralls -BranchName $ENV:APPVEYOR_REPO_BRANCH -Verbose
        $coverage = Format-Coverage -PesterResults $TestResults -CoverallsApiToken $ENV:Coveralls -BranchName $ENV:APPVEYOR_REPO_BRANCH -Verbose
        Publish-Coverage -Coverage $coverage -Verbose
    }

    Remove-Item "$ProjectRoot\$TestFile" -Force -ErrorAction SilentlyContinue

    # Failed tests?
    # Need to tell psake or it will proceed to the deployment. Danger!
    if($TestResults.FailedCount -gt 0)
    {
        Write-Error "Failed '$($TestResults.FailedCount)' tests, build failed"
    }
    "`n"
}

Task Build -Depends Test {
    $lines
    
    if ($ENV:BHBuildSystem -eq 'AppVeyor') {
        # Load the module, read the exported functions, update the psd1 FunctionsToExport
        Set-ModuleFunctions @Verbose

        # Bump the module version
        <#
        $Version = Get-NextPSGalleryVersion -Name $env:BHProjectName
        Update-Metadata -Path $env:BHPSModuleManifest -PropertyName ModuleVersion -Value $Version
        #>
        
        Update-Metadata -Path $env:BHPSModuleManifest -PropertyName ModuleVersion -Value "2.0.1"

        #Update-Metadata -Path $env:BHPSModuleManifest -Increment Minor
    }
    else {
        Write-Host -ForegroundColor Magenta "Build system is not AppVeyor -- skipping module update!"
    }

}

Task Deploy -Depends Build {
    $lines

    $Params = @{
        Path = $ProjectRoot
        Force = $true
        Recurse = $false # We keep psdeploy artifacts, avoid deploying those : )
    }
    Invoke-PSDeploy @Verbose @Params
}