# Add-VSKinesisFirehoseDeliveryStreamCloudWatchLoggingOptions

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.CloudWatchLoggingOptions resource property to the template.
The CloudWatchLoggingOptions property type specifies Amazon CloudWatch Logs (CloudWatch Logs logging options that Amazon Kinesis Data Firehose (Kinesis Data Firehose uses for the delivery stream.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamCloudWatchLoggingOptions [[-Enabled] <Boolean>] [[-LogGroupName] <Object>]
 [[-LogStreamName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.CloudWatchLoggingOptions resource property to the template.
The CloudWatchLoggingOptions property type specifies Amazon CloudWatch Logs (CloudWatch Logs logging options that Amazon Kinesis Data Firehose (Kinesis Data Firehose uses for the delivery stream.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Enabled
Indicates whether CloudWatch Logs logging is enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-enabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogGroupName
The name of the CloudWatch Logs log group that contains the log stream that Kinesis Data Firehose will use.
Conditional.
If you enable logging, you must specify this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-loggroupname
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

### -LogStreamName
The name of the CloudWatch Logs log stream that Kinesis Data Firehose uses to send logs about data delivery.
Conditional.
If you enable logging, you must specify this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-logstreamname
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html)

