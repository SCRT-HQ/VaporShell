$BuildRoot = (Resolve-Path ([System.IO.Path]::Combine($PSScriptRoot, '..', '..', '..'))).Path
$buildOutputPath = [System.IO.Path]::Combine($BuildRoot, 'BuildOutput')

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

Import-Module VaporShell

Describe "FnGetAtt Class tests" -Tag 'Class', 'IntrinsicFunction', 'GetAtt', 'VaporShell', 'ClassUnit' {
    Context 'Initialization' {
        It "Should create FnGetAtt from single string using the accelerator" {
            {
                [FnGetAtt]'MyResource.Arn'
            } | Should -Not -Throw
        }
        It "Should create FnGetAtt from 2 strings" {
            {
                [FnGetAtt]::new('MyResource','Arn')
            } | Should -Not -Throw
        }
        It "Should create FnGetAtt from a single string" {
            {
                [FnGetAtt]::new('MyResource.Arn')
            } | Should -Not -Throw
        }
    }
}

Describe "FnGetAtt Function tests" -Tag 'Function', 'IntrinsicFunction', 'GetAtt', 'VaporShell', 'FunctionUnit' {
    Context 'Initialization' {
        It "Should create FnGetAtt from a single string using the ! YAML short-form alias" {
            {
                !GetAtt 'MyResource.Arn'
            } | Should -Not -Throw
        }
        It "Should output the same JSON string when using shortest form of GetAtt as well as the longest" {
            {
                (!GetAtt 'MyResource.Arn').ToJson($true) -eq
                (Add-FnGetAtt -LogicalNameOfResource 'MyResource' -AttributeName 'Arn').ToJson($true)
            } | Should -BeTrue
        }
    }
}
