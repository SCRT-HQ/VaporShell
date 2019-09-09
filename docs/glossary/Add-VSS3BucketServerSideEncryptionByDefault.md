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

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -KMSMasterKeyID
KMS master key ID to use for the default encryption.
This parameter is allowed if and only if SSEAlgorithm is set to aws:kms.

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

