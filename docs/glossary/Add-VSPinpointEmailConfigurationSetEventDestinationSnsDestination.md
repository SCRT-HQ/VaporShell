# Add-VSPinpointEmailConfigurationSetEventDestinationSnsDestination

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.SnsDestination resource property to the template.
An object that defines an Amazon SNS destination for email events.
You can use Amazon SNS to send notification when certain email events occur.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetEventDestinationSnsDestination [-TopicArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.SnsDestination resource property to the template.
An object that defines an Amazon SNS destination for email events.
You can use Amazon SNS to send notification when certain email events occur.

## PARAMETERS

### -TopicArn
The Amazon Resource Name ARN of the Amazon SNS topic that you want to publish email events to.
For more information about Amazon SNS topics, see the Amazon SNS Developer Guide: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html#cfn-pinpointemail-configurationseteventdestination-snsdestination-topicarn
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

### Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.SnsDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html)

