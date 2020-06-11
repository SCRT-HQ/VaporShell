$projectRoot = Resolve-Path "$PSScriptRoot/../../.."
$BuildOutputPath = [System.IO.Path]::Combine($projectRoot,'BuildOutput')
if (($env:PSModulePath -split ';') -notcontains $BuildOutputPath) {
    $env:PSModulePath = @($BuildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}
$ModulePath = Resolve-Path "$projectRoot/BuildOutput/$($env:BHProjectName)"

# Verbose output for non-master builds on appveyor
# Handy for troubleshooting.
# Splat @Verbose against commands as needed (here or in pester tests)
$Verbose = @{}
if ($ENV:BHBranchName -eq "dev" -or $env:BHCommitMessage -match "!verbose" -or $ENV:TRAVIS_COMMIT_MESSAGE -match "!verbose" -or $ENV:TRAVIS_BRANCH -eq "dev" ) {
    $Verbose.add("Verbose",$True)
}
$modName = $env:BHProjectName

Describe "Class tests: $($env:BHProjectName)" -Tag 'ModuleClass','VaporShellClass','VaporShell' {
    BeforeAll {
        Import-Module $ModulePath
    }
    Context "Confirm classes instantiate correctly" {
        $assembly = [System.AppDomain]::CurrentDomain.GetAssemblies() | Where-Object {
            ($_.FullName -match 'PowerShell Class Assembly' -and $_.CustomAttributes -match "$($modName)\.Classes\.ps1") -or # PS Core dynamic PS class assembly match
            ($_.FullName -match "$($modName)\.Classes\.ps1") # Windows PS dynamic PS class assembly match
        } | Sort-Object CustomAttributes -Unique
        $types = $assembly | Select-Object -ExpandProperty DefinedTypes | Where-Object {
            $_.Name -notmatch '_\<staticHelpers\>$'
        } | Sort-Object FullName
        $testCase = $types | Foreach-Object {@{type = $_}}
        $helpDocsTestCases = $testCase | Where-Object {
            $_['type'].FullName -notin ((Get-ChildItem "$projectRoot/$modName/Classes/00 - Enums").BaseName -replace '^\d+ - ') -and
            $_['type'].FullName -notin ((Get-ChildItem "$projectRoot/$modName/Classes/01 - Base Classes").BaseName -replace '^\d+ - ')
        }
        It "Class <type> should not throw when instantiated" -TestCases $testCase {
            param($type)
            { $type::new() } | Should -Not -Throw
        }
        It "Class <type> should have a Help method" -TestCases $testCase {
            param($type)
            { $type::new() | Get-Member -MemberType Method -Name 'Help' } | Should -Not -BeNullOrEmpty
        }
        It "Class <type> should return Help content with Help()" -TestCases $helpDocsTestCases {
            param($type)
            { $type::new().Help() } | Should -Not -Throw
            $response = $type::new().Help()
            $response | Should -Not -BeNullOrEmpty
        }
        It "Class <type> should have a Docs method" -TestCases $testCase {
            param($type)
            { $type::new() | Get-Member -MemberType Method -Name 'Docs' } | Should -Not -BeNullOrEmpty
        }
        It "Class <type> should return a string with Docs()" -TestCases $helpDocsTestCases {
            param($type)
            Mock Start-Process -MockWith { }
            { $type::new().Docs() } | Should -Not -Throw
            $response = $type::new().Docs()
            $response | Should -Not -BeNullOrEmpty
        }
    }
}
