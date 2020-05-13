[CmdletBinding()]
Param()

Start-BuildScript -Project VaporShell -Task BuildSubmodules

try {
    $modPath = (Get-ChildItem "$PSScriptRoot/../BuildOutput/VaporShell.Common/*/VaporShell.Common.psm1").FullName | Sort-Object FullName | Select-Object -Last 1
    $scriptBody = [System.IO.File]::ReadAllText($modPath)
    $script = [ScriptBlock]::Create($scriptBody)
    #$script = [ScriptBlock]::Create("using module '$modPath'")
    . $script

    $t = [Template]@{
        Description = "My template"
        Resources   = @(
            [Bucket]@{
                LogicalId      = 'MyBucket'
                DeletionPolicy = 'RETAIN'
                Properties     = [BucketProperties]@{
                    BucketName = 'my-test-bucket'
                }
            }
            [Bucket]@{
                LogicalId      = 'MyOtherBucket'
                DeletionPolicy = 'RETAIN'
                Properties     = [BucketProperties]@{
                    BucketName = [FnBase64][FnRef]'BucketName'
                }
            }
        )
    }

    $t2Hash = @{
        Description = "My template"
        Resources   = @(
            [Bucket]@{
                LogicalId      = 'MyBucket'
                DeletionPolicy = 'RETAIN'
                Properties     = [BucketProperties]@{
                    BucketName = 'my-test-bucket'
                }
            }
            [Bucket]@{
                LogicalId      = 'MyOtherBucket'
                DeletionPolicy = 'RETAIN'
                Properties     = [BucketProperties]@{
                    BucketName = [FnBase64][FnRef]'BucketName'
                }
            }
        )
    }
    $t2 = [Template]::new($t2Hash)

    $resource = [Bucket]@{
        LogicalId           = 'MyFancyBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = [FnRef]'ReplacePolicyParam'
        Properties          = [BucketProperties]@{
            BucketName = [FnBase64][FnRef]'BucketName'
        }
    }


    $res2PropHash = @{
        BucketName = [FnBase64][FnRef]'BucketName'
    }
    $res2Props = [BucketProperties]::new($res2PropHash)

    $res2Hash = @{
        LogicalId           = 'MyBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = 'RETAIN'
        Properties          = [BucketProperties]@{
            BucketName = [FnBase64][FnRef]'BucketName'
        }
    }
    $res2 = [Bucket]$res2Hash

    $res3 = [Bucket]@{
        LogicalId           = 'My3rdBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = 'RETAIN'
        Properties          = @{
            BucketName = [FnBase64][FnRef]'BucketName'
        }
    }
    $t.AddResource($resource)

    $t.ToYaml()
    $resource.ToJson()
    $resource.ToYaml()
    $res2.Properties | Format-List
    $res3.Properties | Format-List
}
catch {
    $_
}
