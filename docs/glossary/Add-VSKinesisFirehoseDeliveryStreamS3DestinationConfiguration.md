# Add-VSKinesisFirehoseDeliveryStreamS3DestinationConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.S3DestinationConfiguration resource property to the template.
The S3DestinationConfiguration property type specifies an Amazon Simple Storage Service (Amazon S3 destination to which Amazon Kinesis Data Firehose (Kinesis Data Firehose delivers data.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamS3DestinationConfiguration [-BucketARN] <Object> [-BufferingHints] <Object>
 [[-CloudWatchLoggingOptions] <Object>] [-CompressionFormat] <Object> [[-EncryptionConfiguration] <Object>]
 [[-ErrorOutputPrefix] <Object>] [[-Prefix] <Object>] [-RoleARN] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.S3DestinationConfiguration resource property to the template.
The S3DestinationConfiguration property type specifies an Amazon Simple Storage Service (Amazon S3 destination to which Amazon Kinesis Data Firehose (Kinesis Data Firehose delivers data.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BucketARN
The Amazon Resource Name ARN of the Amazon S3 bucket to send data to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-bucketarn
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

### -BufferingHints
Configures how Kinesis Data Firehose buffers incoming data while delivering it to the Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-bufferinghints
Type: BufferingHints
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

### -CloudWatchLoggingOptions
The CloudWatch logging options for your delivery stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-cloudwatchloggingoptions
Type: CloudWatchLoggingOptions
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CompressionFormat
The type of compression that Kinesis Data Firehose uses to compress the data that it delivers to the Amazon S3 bucket.
For valid values, see the CompressionFormat content for the S3DestinationConfiguration: https://docs.aws.amazon.com/firehose/latest/APIReference/API_S3DestinationConfiguration.html data type in the *Amazon Kinesis Data Firehose API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-compressionformat
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionConfiguration
Configures Amazon Simple Storage Service Amazon S3 server-side encryption.
Kinesis Data Firehose uses AWS Key Management Service AWS KMS to encrypt the data that it delivers to your Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-encryptionconfiguration
Type: EncryptionConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ErrorOutputPrefix
A prefix that Kinesis Data Firehose evaluates and adds to failed records before writing them to S3.
This prefix appears immediately following the bucket name.
For information about how to specify this prefix, see Custom Prefixes for Amazon S3 Objects: https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-erroroutputprefix
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prefix
A prefix that Kinesis Data Firehose adds to the files that it delivers to the Amazon S3 bucket.
The prefix helps you identify the files that Kinesis Data Firehose delivered.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-prefix
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleARN
The ARN of an AWS Identity and Access Management IAM role that grants Kinesis Data Firehose access to your Amazon S3 bucket and AWS KMS if you enable data encryption.
For more information, see Grant Kinesis Data Firehose Access to an Amazon S3 Destination: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3 in the *Amazon Kinesis Data Firehose Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-rolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.S3DestinationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html)

