Start-BuildScript -Project VaporShell -Task BuildSubmodules -Verbose

$origDbgPref = $DebugPreference
$DebugPreference = 'Continue'
Write-Debug "DebugPreference set to $DebugPreference"

try {
    $modPath = (Get-ChildItem "$PSScriptRoot/../BuildOutput/VaporShell.Common/*/VaporShell.Common.psm1").FullName | Sort-Object FullName | Select-Object -Last 1
    $scriptBody = [System.IO.File]::ReadAllText($modPath)
    $script = [ScriptBlock]::Create($scriptBody)
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
        LogicalId           = 'MyBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = 'RETAIN'
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
        Properties          = [BucketProperties]@{   #$res2Props
            BucketName = [FnBase64][FnRef]'BucketName'
        }
    }
    $res2 = [Bucket]$res2Hash

    $res3 = [Bucket]@{
        LogicalId           = 'MyBucket'
        DeletionPolicy      = 'RETAIN'
        UpdateReplacePolicy = 'RETAIN'
        Properties          = @{
            BucketName = [FnBase64][FnRef]'BucketName'
        }
    }

    $t.ToYaml()
    $resource.ToJson()
    $resource.ToYaml()
    $res2.Properties | Format-List
    $res3.Properties | Format-List
}
finally {
    Write-Debug "Setting DebugPreference back to $origDbgPref"
    $DebugPreference = $origDbgPref
}
