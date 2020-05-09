# Add-VSKinesisFirehoseDeliveryStreamKMSEncryptionConfig

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.KMSEncryptionConfig resource property to the template.
The KMSEncryptionConfig property type specifies the AWS Key Management Service (AWS KMS encryption key that Amazon Simple Storage Service (Amazon S3 uses to encrypt data delivered by the Amazon Kinesis Data Firehose (Kinesis Data Firehose stream.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamKMSEncryptionConfig [-AWSKMSKeyARN] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.KMSEncryptionConfig resource property to the template.
The KMSEncryptionConfig property type specifies the AWS Key Management Service (AWS KMS encryption key that Amazon Simple Storage Service (Amazon S3 uses to encrypt data delivered by the Amazon Kinesis Data Firehose (Kinesis Data Firehose stream.

## PARAMETERS

### -AWSKMSKeyARN
The Amazon Resource Name ARN of the AWS KMS encryption key that Amazon S3 uses to encrypt data delivered by the Kinesis Data Firehose stream.
The key must belong to the same region as the destination S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html#cfn-kinesisfirehose-deliverystream-kmsencryptionconfig-awskmskeyarn
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

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.KMSEncryptionConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html)

