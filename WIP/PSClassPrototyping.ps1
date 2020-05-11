#using module ../BuildOutput/VaporShell/2.12.2.20200511/VaporShell.psm1

$classPath = (Resolve-Path "$PSScriptRoot\..\VaporShell\Classes").Path
Get-ChildItem $classPath -Recurse -Filter '*.ps1' | Sort-Object FullName | ForEach-Object {
    . $_.FullName
}

$t = [VaporShell.Template]@{
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
$resource.ToJson()
$resource.ToYaml()
