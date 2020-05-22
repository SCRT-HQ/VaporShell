$projectRoot = Resolve-Path ([System.IO.Path]::Combine($PSScriptRoot,'..','..'))

$buildOutputPath = [System.IO.Path]::Combine($projectRoot.Path, "BuildOutput")

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

Import-Module VaporShell.S3 -Force -Verbose

Describe "Template tests" {
    Context 'Initialization' {
        It "Should not fail to create a complex template" {
            {
                [VSTemplate]@{
                    Description = "My template"
                    Mappings    = @(
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
                    )
                    Parameters  = @(
                        [VSParameter]@{
                            LogicalId   = 'BucketName1Param'
                            Description = 'The name of the first bucket to create'
                            Type        = 'String'
                        }
                        [VSParameter]@{
                            LogicalId   = 'BucketName2Param'
                            Description = 'The name of the second bucket to create'
                            Type        = 'String'
                        }
                        [VSParameter]@{
                            LogicalId     = 'Bucket2DeletionPolicy'
                            Description   = 'The deletion policy for bucket 2'
                            Type          = 'String'
                            Default       = 'Delete'
                            AllowedValues = @('Delete', 'Retain', 'Snapshot')
                        }
                    )
                    Resources   = @(
                        [S3Bucket]@{
                            LogicalId      = 'MyBucket'
                            DeletionPolicy = [DeletionPolicy]::Retain
                            BucketName     = [FnRef]'BucketName1Param'
                        }
                        [S3Bucket]@{
                            LogicalId      = 'MyOtherBucket'
                            DeletionPolicy = [FnRef]'Bucket2DeletionPolicy'
                            BucketName     = [FnRef]'BucketName2Param'
                            Tags           = @{
                                Name        = 'MyOtherBucket'
                                environment = 'development'
                                application = 'VaporShell'
                            }
                        }
                    )
                }
            } | Should -Not -Throw
        }
    }
}
