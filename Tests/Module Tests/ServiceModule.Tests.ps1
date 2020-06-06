$projectRoot = Resolve-Path "$PSScriptRoot/../.."
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

    Describe "Module tests: $($serviceModule.BaseName)" {
        BeforeAll {
            Import-Module $ModulePath
        }
        Context "Confirm files are valid Powershell syntax" {
            $scripts = Get-ChildItem $decompiledModulePath -Include *.ps1, *.psm1, *.psd1 -Recurse
            $testCase = $scripts | ForEach-Object { @{file = $_ } }
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
            $scripts = Get-ChildItem $ModulePath -Include Attributes.ps1, Classes.ps1 -Recurse
            $testCase = $scripts | ForEach-Object { @{file = $_ } }
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
            if (Test-Path "$decompiledModulePath\Private") {
                $testCase = Get-ChildItem "$decompiledModulePath\Private" -Recurse -Include *.ps1 | ForEach-Object { @{item = $_.BaseName } }
                It "Should throw when checking for <item> in the module commands" -TestCases $testCase {
                    param($item)
                    { Get-Command -Name $item -Module $serviceModule.BaseName -ErrorAction Stop } | Should -Throw "The term '$item' is not recognized as the name of a cmdlet, function, script file, or operable program."
                }
            }
        }
        Context "Confirm there are no duplicate function names in private and public folders" {
            It 'Should have no duplicate functions' {
                $functions = Get-ChildItem "$decompiledModulePath\Public" -Recurse -Include *.ps1 | Select-Object -ExpandProperty BaseName
                if (Test-Path "$decompiledModulePath\Private") {
                    $functions += Get-ChildItem "$decompiledModulePath\Private" -Recurse -Include *.ps1 | Select-Object -ExpandProperty BaseName
                }
                ($functions | Group-Object | Where-Object { $_.Count -gt 1 }).Count | Should -BeLessThan 1
            }
        }
        Context "Confirm the compiled service module imports successfully" {
            It 'Should import successfully' {
                { Import-Module $ModulePath -Force -Verbose:$false } | Should -Not -Throw
            }
        }
    }
    Describe "Class tests: $($serviceModule.BaseName)" {
        BeforeAll {
            Import-Module $ModulePath
        }
        Context "Confirm classes instantiate with the parameterless constructor" {
            $types = [System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {
                $_.FullName -match 'PowerShell Class Assembly' -and $_.CustomAttributes -match "$([Regex]::Escape($serviceModule.BaseName)).*Classes.ps1"
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
