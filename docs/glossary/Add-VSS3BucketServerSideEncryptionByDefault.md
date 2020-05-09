# Add-VSS3BucketServerSideEncryptionByDefault

## SYNOPSIS
Adds an AWS::S3::Bucket.ServerSideEncryptionByDefault resource property to the template.
Describes the default server-side encryption to apply to new objects in the bucket.
If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied.
For more information, see PUT Bucket encryption: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html in the *Amazon Simple Storage Service API Reference*.

## SYNTAX

```
Add-VSS3BucketServerSideEncryptionByDefault [[-KMSMasterKeyID] <Object>] [-SSEAlgorithm] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.ServerSideEncryptionByDefault resource property to the template.
Describes the default server-side encryption to apply to new objects in the bucket.
If a PUT Object request doesn't specify any server-side encryption, this default encryption will be applied.
For more information, see PUT Bucket encryption: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html in the *Amazon Simple Storage Service API Reference*.

## PARAMETERS

### -KMSMasterKeyID
KMS key ID to use for the default encryption.
This parameter is allowed if SSEAlgorithm is aws:kms.
You can specify the key ID or the Amazon Resource Name ARN of the CMK.
For example:
+ Key ID: 1234abcd-12ab-34cd-56ef-1234567890ab
+ Key ARN: arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
Amazon S3 only supports symmetric CMKs and not asymmetric CMKs.
For more information, see Using Symmetric and Asymmetric Keys: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html#cfn-s3-bucket-serversideencryptionbydefault-kmsmasterkeyid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SSEAlgorithm
Server-side encryption algorithm to use for the default encryption.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html#cfn-s3-bucket-serversideencryptionbydefault-ssealgorithm
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.ServerSideEncryptionByDefault
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-serversideencryptionbydefault.html)

