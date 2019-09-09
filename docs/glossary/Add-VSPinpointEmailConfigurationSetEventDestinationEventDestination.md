# Add-VSPinpointEmailConfigurationSetEventDestinationEventDestination

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.EventDestination resource property to the template.
In Amazon Pinpoint, *events* include message sends, deliveries, opens, clicks, bounces, and complaints.
*Event destinations* are places that you can send information about these events to.
For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetEventDestinationEventDestination [[-SnsDestination] <Object>]
 [[-CloudWatchDestination] <Object>] [[-Enabled] <Boolean>] [-MatchingEventTypes] <Object>
 [[-PinpointDestination] <Object>] [[-KinesisFirehoseDestination] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.EventDestination resource property to the template.
In Amazon Pinpoint, *events* include message sends, deliveries, opens, clicks, bounces, and complaints.
*Event destinations* are places that you can send information about these events to.
For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SnsDestination
An object that defines an Amazon SNS destination for email events.
You can use Amazon SNS to send notification when certain email events occur.

Type: SnsDestination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-snsdestination
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

### -CloudWatchDestination
An object that defines an Amazon CloudWatch destination for email events.
You can use Amazon CloudWatch to monitor and gain insights on your email sending metrics.

Type: CloudWatchDestination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-cloudwatchdestination
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

### -Enabled
If true, the event destination is enabled.
When the event destination is enabled, the specified event types are sent to the destinations in this EventDestinationDefinition.
If false, the event destination is disabled.
When the event destination is disabled, events aren't sent to the specified destinations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-enabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -MatchingEventTypes
The types of events that Amazon Pinpoint sends to the specified event destinations.
Acceptable values: SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, and RENDERING_FAILURE.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-matchingeventtypes
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

### -PinpointDestination
An object that defines a Amazon Pinpoint destination for email events.
You can use Amazon Pinpoint events to create attributes in Amazon Pinpoint projects.
You can use these attributes to create segments for your campaigns.

Type: PinpointDestination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-pinpointdestination
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

### -KinesisFirehoseDestination
An object that defines an Amazon Kinesis Data Firehose destination for email events.
You can use Amazon Kinesis Data Firehose to stream data to other services, such as Amazon S3 and Amazon Redshift.

Type: KinesisFirehoseDestination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-kinesisfirehosedestination
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.EventDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html)

