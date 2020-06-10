$PSVersion = $PSVersionTable.PSVersion.Major
$projectRoot = Resolve-Path "$PSScriptRoot\..\.."
$BuildOutputPath = [System.IO.Path]::Combine($projectRoot,'BuildOutput')
if (($env:PSModulePath -split ';') -notcontains $BuildOutputPath) {
    $env:PSModulePath = @($BuildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}
$ModulePath = Resolve-Path "$projectRoot\BuildOutput\$($env:BHProjectName)"
$decompiledModulePath = Resolve-Path "$projectRoot\$($env:BHProjectName)"

# Verbose output for non-master builds on appveyor
# Handy for troubleshooting.
# Splat @Verbose against commands as needed (here or in pester tests)
$Verbose = @{}
if ($ENV:BHBranchName -eq "dev" -or $env:BHCommitMessage -match "!verbose" -or $ENV:TRAVIS_COMMIT_MESSAGE -match "!verbose" -or $ENV:TRAVIS_BRANCH -eq "dev" ) {
    $Verbose.add("Verbose",$True)
}

$moduleRoot = Split-Path (Resolve-Path "$ModulePath\*\*.psd1")
$udFile = (Resolve-Path "$PSScriptRoot\..\Assets\UserData.sh").Path

Write-Verbose "Importing $($env:BHProjectName) module at [$ModulePath]"
Import-Module $ModulePath -Force -Verbose:$false
$currentFunctionCount = (Get-Command -Module Vaporshell).Count

Describe "Module tests: $($env:BHProjectName)" -Tag 'Module','VaporShellModule' {
    Context "Confirm files are valid Powershell syntax" {
        $scripts = Get-ChildItem $decompiledModulePath -Include *.ps1,*.psm1,*.psd1 -Recurse

        $testCase = $scripts | Foreach-Object {@{file = $_}}
        It "Script <file> should be valid Powershell" -TestCases $testCase {
            param($file)

            $file.fullname | Should Exist

            $contents = Get-Content -Path $file.fullname -ErrorAction Stop
            $errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize($contents, [ref]$errors)
            $errors.Count | Should Be 0
        }
    }
    Context "Confirm compiled Attributes and Classes scripts are valid" {
        $scripts = Get-ChildItem $ModulePath -Include *.Attributes.ps1, *.Classes.ps1 -Recurse
        $testCase = $scripts | Foreach-Object {@{file = $_}}
        It "Script <file> should be valid Powershell" -TestCases $testCase {
            param($file)

            $file.fullname | Should Exist

            $contents = Get-Content -Path $file.fullname -ErrorAction Stop
            $errors = $null
            $null = [System.Management.Automation.PSParser]::Tokenize($contents, [ref]$errors)
            $errors.Count | Should Be 0
        }
    }
    Context "Confirm private functions are not exported on module import" {
        $testCase = Get-ChildItem "$decompiledModulePath\Private" -Recurse -Include *.ps1 | Foreach-Object {@{item = $_.BaseName}}
        It "Should throw when checking for <item> in the module commands" -TestCases $testCase {
            param($item)
            {Get-Command -Name $item -Module $env:BHProjectName -ErrorAction Stop} | Should -Throw "The term '$item' is not recognized as the name of a cmdlet, function, script file, or operable program."
        }
    }
    Context "Confirm there are no duplicate function names in private and public folders" {
        It 'Should have no duplicate functions' {
            $functions = Get-ChildItem "$decompiledModulePath\Public" -Recurse -Include *.ps1 | Select-Object -ExpandProperty BaseName
            $functions += Get-ChildItem "$decompiledModulePath\Private" -Recurse -Include *.ps1 | Select-Object -ExpandProperty BaseName
            ($functions | Group-Object | Where-Object {$_.Count -gt 1}).Count | Should -BeLessThan 1
        }
    }
}
