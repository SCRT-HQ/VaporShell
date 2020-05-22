[CmdletBinding()]
Param(
    [Parameter(Position = 0)]
    [ValidateSet('BuildClasses','TestClasses')]
    [string[]]
    $Task = @('BuildClasses','TestClasses')
)

if ($Function:prompt.ToString() -notmatch 'VS CLASS DBG') {
    $env:VSClassDebugLevel = 1
}
else {
    $env:VSClassDebugLevel = ([int]$env:VSClassDebugLevel) + 1
}
$command = "function prompt {`"`"[VS CLASS DBG #$env:VSClassDebugLevel] `$(`$PWD.Path)> `"`"};. '$($PSScriptRoot)/../build.ps1' -Task $($Task -join ',')"
pwsh -NoExit -NoProfile -Command $command

<#
$buildOutputPath = (Resolve-Path ([System.IO.Path]::Combine($PSScriptRoot, '..', "BuildOutput"))).Path

if (($env:PSModulePath -split ';') -notcontains $buildOutputPath) {
    $env:PSModulePath = @($buildOutputPath, $env:PSModulePath) -join [System.IO.Path]::PathSeparator
}

try {
    Import-Module VaporShell.S3 -Verbose -Force

    Write-Host -ForegroundColor Green "Module imported, creating templates..."

    $mapTest = [VSTemplate]@{
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
        Resources   = @(
            [S3Bucket]@{
                LogicalId      = 'MyBucket'
                DeletionPolicy = [DeletionPolicy]::Retain
                BucketName     = 'BucketName1Param'
            }
        )
    }

    $tClean = [VSTemplate]@{
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

    "`n`n##################### `$tClean.ToYaml() #####################`n"
    $tClean.ToYaml()
    "`n`n##################### `$tClean.ToYaml(`$true) #####################`n"
    $tClean.ToYaml($true)
    "`n##################### `$res2.Properties #####################"
    [PSCustomObject]$res2.Properties | Format-List
    "`n##################### `$res3.Properties #####################"
    [PSCustomObject]$res3.Properties | Format-List
}
catch {
    $_
}
#>
