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
    $decompiledModulePath = $serviceModule.FullName
    $ModulePath = Resolve-Path "$BuildOutputPath/$($serviceModule.BaseName)"
    Describe "Class tests: $($serviceModule.BaseName)" {
        BeforeAll {
            Import-Module $ModulePath
        }
        Context "Confirm classes instantiate with the parameterless constructor" {
            $types = [System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {
                $_.FullName -match 'PowerShell Class Assembly' -and $_.CustomAttributes -match "$($serviceModule.BaseName)(\/|\\).*Classes.ps1"
            } | Select-Object -ExpandProperty DefinedTypes | Where-Object {
                $_.Name -notmatch '_\<staticHelpers\>$'
            }
            $testCase = $types | ForEach-Object { @{type = $_ } }
            It "Class <type> should not throw when instantiated" -TestCases $testCase {
                param($type)
                { $type::new() } | Should -Not -Throw
            }
        }
    }
}
