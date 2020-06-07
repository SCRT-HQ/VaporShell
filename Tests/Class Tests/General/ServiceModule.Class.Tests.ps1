$projectRoot = Resolve-Path "$PSScriptRoot/../../.."
$Verbose = @{}
if ($ENV:BHBranchName -eq "dev" -or $env:BHCommitMessage -match "!verbose" -or $ENV:TRAVIS_COMMIT_MESSAGE -match "!verbose" -or $ENV:TRAVIS_BRANCH -eq "dev" ) {
    $Verbose.add("Verbose", $True)
}
$ServiceModulesPath = Resolve-Path "$projectRoot/ServiceModules"
$BuildOutputPath = Resolve-Path "$projectRoot/BuildOutput"
if (($env:PSModulePath -split ';') -notcontains $BuildOutputPath) {
    $env:PSModulePath = @($BuildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}
$serviceModules = Get-ChildItem $ServiceModulesPath -Directory

foreach ($serviceModule in $serviceModules) {
    $ModulePath = Resolve-Path "$BuildOutputPath/$($serviceModule.BaseName)"
    Describe "Class tests: $($serviceModule.BaseName)" {
        BeforeAll {
            Import-Module $ModulePath -Force
        }
        Context "Confirm classes instantiate with the parameterless constructor" {
            $types = [System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {
                ($_.FullName -match 'PowerShell Class Assembly' -and $_.CustomAttributes -match "$($serviceModule.BaseName)(\/|\\)\d+\.\d+\.\d+.\d+(\/|\\)Classes\.ps1") -or # PS Core dynamic PS class assembly match
                ($_.FullName -match "$($serviceModule.BaseName).\d+\.\d+\.\d+\.\d+.Classes\.ps1") # Windows PS dynamic PS class assembly match
            } | Select-Object -ExpandProperty DefinedTypes | Where-Object {
                $_.Name -notmatch '_\<staticHelpers\>$'
            }
            $testCase = $types | ForEach-Object { @{type = $_ } }
            It "Class <type> should not throw when instantiated" -TestCases $testCase {
                param($type)
                { $type::new() } | Should -Not -Throw
            }
            It "Class <type> should have a Help() static method" -TestCases $testCase {
                param($type)
                { $type::new() | Get-Member -Name 'Help*' -MemberType Method -Static } | Should -Not -BeNullOrEmpty
                { $type::Help() } | Should -Not -Throw
            }
            It "Class <type> should return a Help string with Help()" -TestCases $testCase {
                param($type)
                $help = $type::Help()
                $help | Should -Not -BeNullOrEmpty
            }
            It "Class <type> should have a Docs() static method" -TestCases $testCase {
                param($type)
                { $type::new() | Get-Member -Name 'Docs*' -MemberType Method -Static } | Should -Not -BeNullOrEmpty
            }
        }
    }
}
