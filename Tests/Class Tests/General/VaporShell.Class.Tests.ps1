$PSVersion = $PSVersionTable.PSVersion.Major
$projectRoot = Resolve-Path "$PSScriptRoot/../../.."
$BuildOutputPath = [System.IO.Path]::Combine($projectRoot,'BuildOutput')
if (($env:PSModulePath -split ';') -notcontains $BuildOutputPath) {
    $env:PSModulePath = @($BuildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}
$ModulePath = Resolve-Path "$projectRoot/BuildOutput/$($env:BHProjectName)"
$decompiledModulePath = Resolve-Path "$projectRoot/$($env:BHProjectName)"

# Verbose output for non-master builds on appveyor
# Handy for troubleshooting.
# Splat @Verbose against commands as needed (here or in pester tests)
$Verbose = @{}
if ($ENV:BHBranchName -eq "dev" -or $env:BHCommitMessage -match "!verbose" -or $ENV:TRAVIS_COMMIT_MESSAGE -match "!verbose" -or $ENV:TRAVIS_BRANCH -eq "dev" ) {
    $Verbose.add("Verbose",$True)
}

Describe "Class tests: $($env:BHProjectName)" {
    BeforeAll {
        Import-Module $ModulePath
    }
    Context "Confirm classes instantiate with the parameterless constructor" {
        $assembly = [System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {
            $_.FullName -match  'PowerShell Class Assembly' -and $_.CustomAttributes -match "$($env:BHProjectName)(\/|\\).*Classes.ps1" -and $_.CustomAttributes -notmatch "$($env:BHProjectName)\."
        } | Sort-Object CustomAttributes -Unique
        $types = $assembly | Select-Object -ExpandProperty DefinedTypes | Where-Object {
            $_.Name -notmatch '_\<staticHelpers\>$'
        }
        $testCase = $types | Foreach-Object {@{type = $_}}
        It "Class <type> should not throw when instantiated" -TestCases $testCase {
            param($type)
            { $type::new() } | Should -Not -Throw
        }
    }
}
