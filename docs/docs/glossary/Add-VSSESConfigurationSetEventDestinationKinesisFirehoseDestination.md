# Add-VSSESConfigurationSetEventDestinationKinesisFirehoseDestination

## SYNOPSIS
Adds an AWS::SES::ConfigurationSetEventDestination.KinesisFirehoseDestination resource property to the template.
Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Data Firehose event destination.

## SYNTAX

```
Add-VSSESConfigurationSetEventDestinationKinesisFirehoseDestination [-IAMRoleARN] <Object>
 [-DeliveryStreamARN] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ConfigurationSetEventDestination.KinesisFirehoseDestination resource property to the template.
Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Data Firehose event destination.

Event destinations, such as Amazon Kinesis Data Firehose, are associated with configuration sets, which enable you to publish email sending events.
For information about using configuration sets, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html.

## PARAMETERS

### -IAMRoleARN
The ARN of the IAM role that Amazon SES uses to publish email sending events to the Amazon Kinesis Data Firehose stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
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

### -DeliveryStreamARN
The ARN of the Amazon Kinesis Data Firehose stream that email sending events should be published to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
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

### Vaporshell.Resource.SES.ConfigurationSetEventDestination.KinesisFirehoseDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html)

