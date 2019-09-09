# Add-VSS3BucketAccelerateConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.AccelerateConfiguration resource property to the template.
Configures the transfer acceleration state for an Amazon S3 bucket.
For more information, see Amazon S3 Transfer Acceleration: https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html in the *Amazon Simple Storage Service Developer Guide*.

## SYNTAX

```
Add-VSS3BucketAccelerateConfiguration [-AccelerationStatus] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.AccelerateConfiguration resource property to the template.
Configures the transfer acceleration state for an Amazon S3 bucket.
For more information, see Amazon S3 Transfer Acceleration: https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html in the *Amazon Simple Storage Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AccelerationStatus
Specifies the transfer acceleration status of the bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html#cfn-s3-bucket-accelerateconfiguration-accelerationstatus
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

### Vaporshell.Resource.S3.Bucket.AccelerateConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html)

