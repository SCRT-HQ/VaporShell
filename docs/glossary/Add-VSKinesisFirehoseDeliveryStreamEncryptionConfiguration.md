# Add-VSKinesisFirehoseDeliveryStreamEncryptionConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.EncryptionConfiguration resource property to the template.
The EncryptionConfiguration property type specifies the encryption settings that Amazon Kinesis Data Firehose (Kinesis Data Firehose uses when delivering data to Amazon Simple Storage Service (Amazon S3.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamEncryptionConfiguration [[-KMSEncryptionConfig] <Object>]
 [[-NoEncryptionConfig] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.EncryptionConfiguration resource property to the template.
The EncryptionConfiguration property type specifies the encryption settings that Amazon Kinesis Data Firehose (Kinesis Data Firehose uses when delivering data to Amazon Simple Storage Service (Amazon S3.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -KMSEncryptionConfig
The AWS Key Management Service AWS KMS encryption key that Amazon S3 uses to encrypt your data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-kmsencryptionconfig
Type: KMSEncryptionConfig
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

### -NoEncryptionConfig
Disables encryption.
For valid values, see the NoEncryptionConfig content for the EncryptionConfiguration: https://docs.aws.amazon.com/firehose/latest/APIReference/API_EncryptionConfiguration.html data type in the *Amazon Kinesis Data Firehose API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-noencryptionconfig
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.EncryptionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html)

