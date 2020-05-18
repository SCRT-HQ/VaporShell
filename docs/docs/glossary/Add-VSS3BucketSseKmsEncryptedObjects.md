# Add-VSS3BucketSseKmsEncryptedObjects

## SYNOPSIS
Adds an AWS::S3::Bucket.SseKmsEncryptedObjects resource property to the template.
A container for filter information for the selection of S3 objects encrypted with AWS KMS.

## SYNTAX

```
Add-VSS3BucketSseKmsEncryptedObjects [-Status] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.SseKmsEncryptedObjects resource property to the template.
A container for filter information for the selection of S3 objects encrypted with AWS KMS.

## PARAMETERS

### -Status
Specifies whether Amazon S3 replicates objects created with server-side encryption using a customer master key CMK stored in AWS Key Management Service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html#cfn-s3-bucket-ssekmsencryptedobjects-status
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

### Vaporshell.Resource.S3.Bucket.SseKmsEncryptedObjects
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html)

