# Add-VSS3BucketBucketEncryption

## SYNOPSIS
Adds an AWS::S3::Bucket.BucketEncryption resource property to the template.
Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3 or AWS KMS-managed keys (SSE-KMS bucket.
For information about the Amazon S3 default encryption feature, see  Amazon S3 Default Encryption for S3 Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html in the *Amazon Simple Storage Service Developer Guide*.

## SYNTAX

```
Add-VSS3BucketBucketEncryption [-ServerSideEncryptionConfiguration] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.BucketEncryption resource property to the template.
Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys (SSE-S3 or AWS KMS-managed keys (SSE-KMS bucket.
For information about the Amazon S3 default encryption feature, see  Amazon S3 Default Encryption for S3 Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html in the *Amazon Simple Storage Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ServerSideEncryptionConfiguration
Specifies the default server-side-encryption configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html#cfn-s3-bucket-bucketencryption-serversideencryptionconfiguration
DuplicatesAllowed: False
ItemType: ServerSideEncryptionRule
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.BucketEncryption
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html)

