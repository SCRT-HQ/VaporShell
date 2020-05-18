[CmdletBinding()]
Param()

Start-BuildScript -Project VaporShell -Task BuildSubmodules

$buildOutputPath = (Resolve-Path ([System.IO.Path]::Combine($PSScriptRoot, '..', "BuildOutput"))).Path

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

try {
    #. ([scriptblock]::Create('using module VaporShell.S3'))
    Import-Module VaporShell.S3 -Verbose -Force

    $tClean = [VSTemplate]@{
        Description = "My template"
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
                DeletionPolicy = [DeletionPolicy]::RETAIN
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

    $t = [VSTemplate]@{
        Description = "My template"
        Resources   = @(
            [S3Bucket]@{
                LogicalId      = 'MyBucket'
                DeletionPolicy = 'RETAIN'
                BucketName     = 'my-test-bucket'
            }
            [S3Bucket]@{
                LogicalId      = 'MyOtherBucket'
                DeletionPolicy = 'RETAIN'
                BucketName     = [FnBase64][FnRef]'BucketName'
                Tags           = @{
                    Name        = 'MyOtherBucket'
                    environment = 'development'
                    application = 'VaporShell'
                }
            }
        )
    }

    $t2Hash = @{
        Description = "My template"
        Resources   = @(
            [S3Bucket]@{
                LogicalId      = 'MyBucket'
                DeletionPolicy = 'RETAIN'
                BucketName     = 'my-test-bucket'
            }
            [S3Bucket]@{
                LogicalId      = 'MyOtherBucket'
                DeletionPolicy = 'RETAIN'
                BucketName     = [FnBase64][FnRef]'BucketName'
            }
        )
    }
    $t2 = [VSTemplate]::new($t2Hash)

    $resource = [S3Bucket]@{
        LogicalId           = 'MyFancyBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = [FnRef]'ReplacePolicyParam'
        BucketName          = [FnBase64][FnRef]'BucketName'
    }

    $res2Hash = @{
        LogicalId           = 'MyBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = 'RETAIN'
        BucketName          = [FnBase64][FnRef]'BucketName'
    }
    $res2 = [S3Bucket]$res2Hash

    $res3 = [S3Bucket]@{
        LogicalId           = 'My3rdBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = 'RETAIN'
        BucketName          = [FnBase64][FnRef]'BucketName'
    }
    $t.AddResource($resource)

    "`n##################### `$t.ToYaml() #####################"
    $t.ToYaml()
    "`n##################### `$tClean.ToYaml(`$true) #####################"
    $tClean.ToYaml($true)
    "`n##################### `$res2.Properties #####################"
    [PSCustomObject]$res2.Properties | Format-List
    "`n##################### `$res3.Properties #####################"
    [PSCustomObject]$res3.Properties | Format-List
}
catch {
    $_
}
