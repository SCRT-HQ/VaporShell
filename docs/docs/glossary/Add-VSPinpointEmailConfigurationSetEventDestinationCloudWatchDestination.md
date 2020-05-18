# Add-VSPinpointEmailConfigurationSetEventDestinationCloudWatchDestination

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.CloudWatchDestination resource property to the template.
An object that defines an Amazon CloudWatch destination for email events.
You can use Amazon CloudWatch to monitor and gain insights on your email sending metrics.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetEventDestinationCloudWatchDestination [[-DimensionConfigurations] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.CloudWatchDestination resource property to the template.
An object that defines an Amazon CloudWatch destination for email events.
You can use Amazon CloudWatch to monitor and gain insights on your email sending metrics.

## PARAMETERS

### -DimensionConfigurations
An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html#cfn-pinpointemail-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
ItemType: DimensionConfiguration
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.CloudWatchDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html)

