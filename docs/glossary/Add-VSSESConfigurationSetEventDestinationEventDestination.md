# Add-VSSESConfigurationSetEventDestinationEventDestination

## SYNOPSIS
Adds an AWS::SES::ConfigurationSetEventDestination.EventDestination resource property to the template.
Contains information about the event destination that email sending events are published to.
Event destinations are associated with configuration sets.
When you specify an event destination, you provide one, and only one, destination.
You can send event data to Amazon CloudWatch or Amazon Kinesis Data Firehose.
For more information about using configuration sets, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html.

## SYNTAX

```
Add-VSSESConfigurationSetEventDestinationEventDestination [[-CloudWatchDestination] <Object>]
 [[-Enabled] <Object>] [-MatchingEventTypes] <Object> [[-Name] <Object>]
 [[-KinesisFirehoseDestination] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ConfigurationSetEventDestination.EventDestination resource property to the template.
Contains information about the event destination that email sending events are published to.
Event destinations are associated with configuration sets.
When you specify an event destination, you provide one, and only one, destination.
You can send event data to Amazon CloudWatch or Amazon Kinesis Data Firehose.
For more information about using configuration sets, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html.

**Note**

You can't specify Amazon SNS event destinations in CloudFormation templates.

## PARAMETERS

### -CloudWatchDestination
An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.

Type: CloudWatchDestination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-cloudwatchdestination
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

### -Enabled
Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set.
Set to true to enable publishing to this destination; set to false to prevent publishing to this destination.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-enabled
PrimitiveType: Boolean
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

### -MatchingEventTypes
The type of email sending events to publish to the event destination.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-matchingeventtypes
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the event destination.
The name must:
+ This value can only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ Contain fewer than 64 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-name
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KinesisFirehoseDestination
An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Data Firehose event destination.

Type: KinesisFirehoseDestination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-kinesisfirehosedestination
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ConfigurationSetEventDestination.EventDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html)

