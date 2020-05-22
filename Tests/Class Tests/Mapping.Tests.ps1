$buildOutputPath = [System.IO.Path]::Combine($PSScriptRoot,'..','..','BuildOutput')

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

Import-Module VaporShell -Verbose:$false

Describe "Mapping tests" {
    Context 'Initialization' {
        It "Should create a correctly formed mapping" {
            {
                [VSMapping]@{
                    LogicalId = 'AmiMap'
                    Map       = @{
                        'us-west-2' = @{
                            AmiId = 'ami-lkjsdflkjsdf'
                        }
                        'us-east-1' = @{
                            AmiId = 'ami-iuosdfoiulsa'
                        }
                    }
                }
            } | Should -Not -Throw
        }
    }
    Context 'Input validation' {
        It "Should fail to create a malformed mapping" {
            {
                [VSMapping]@{
                    LogicalId = 'AmiMap'
                    Map       = @{
                        'us-west-2' = @{
                            AmiId = 'ami-lkjsdflkjsdf'
                        }
                        'us-east-1' = 'ami-iuosdfoiulsa'
                    }
                }
            } | Should -Throw -ExpectedMessage 'Exception setting "Map": "The values of the Map property must be IDictionarys themselves. Map key ''us-east-1'' has a value of type ''string'' assigned to it."'
        }
    }
}
