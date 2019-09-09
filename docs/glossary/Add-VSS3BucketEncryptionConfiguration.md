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

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ReplicaKmsKeyID
Specifies the AWS KMS Key ID Key ARN or Alias ARN for the destination bucket.
Amazon S3 uses this key to encrypt replica objects.

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

