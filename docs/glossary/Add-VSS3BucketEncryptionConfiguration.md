# Add-VSS3BucketEncryptionConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.EncryptionConfiguration resource property to the template.
Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.

## SYNTAX

```
Add-VSS3BucketEncryptionConfiguration [-ReplicaKmsKeyID] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.EncryptionConfiguration resource property to the template.
Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.

## PARAMETERS

### -ReplicaKmsKeyID
Specifies the ID Key ARN or Alias ARN of the customer managed customer master key CMK stored in AWS Key Management Service KMS for the destination bucket.
Amazon S3 uses this key to encrypt replica objects.
Amazon S3 only supports symmetric customer managed CMKs.
For more information, see Using Symmetric and Asymmetric Keys: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html#cfn-s3-bucket-encryptionconfiguration-replicakmskeyid
PrimitiveType: String
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

### Vaporshell.Resource.S3.Bucket.EncryptionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-encryptionconfiguration.html)

