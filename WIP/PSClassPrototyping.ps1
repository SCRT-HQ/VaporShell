$classPath = (Resolve-Path "$PSScriptRoot\..\VaporShell\Classes").Path
Get-ChildItem $classPath -Recurse -Filter '*.ps1' | Sort-Object FullName | ForEach-Object {
    . $_.FullName
}

$t = [Template]@{
    Description = "My template"
    Resources   = @(
        [S3Bucket]@{
            LogicalId      = 'MyBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = 'my-test-bucket'
            }
        }
        [S3Bucket]@{
            LogicalId      = 'MyOtherBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = [FnBase64][FnRef]'BucketName'
            }
        }
    )
}

$t2Hash = @{
    Resources = @(
        [S3Bucket]@{
            LogicalId      = 'MyOtherBucket'
            DeletionPolicy = 'RETAIN'
            Properties     = [S3BucketProperties]@{
                BucketName = [FnBase64][FnRef]'BucketName'
            }
        }
    )
}
$t2 = [Template]::new($t2Hash)

$resource = [S3Bucket]@{
    LogicalId           = 'MyBucket'
    DeletionPolicy      = 'RETAIN'
    UpdateReplacePolicy = 'RETAIN'
    Properties          = [S3BucketProperties]@{
        BucketName = [FnBase64][FnRef]'BucketName'
    }
}

$t.ToYaml()
$t2.ToYaml()
$resource.ToJson()
$resource.ToYaml()
