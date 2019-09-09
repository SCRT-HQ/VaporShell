# Add-VSSESConfigurationSetEventDestinationCloudWatchDestination

## SYNOPSIS
Adds an AWS::SES::ConfigurationSetEventDestination.CloudWatchDestination resource property to the template.
Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.

## SYNTAX

```
Add-VSSESConfigurationSetEventDestinationCloudWatchDestination [[-DimensionConfigurations] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ConfigurationSetEventDestination.CloudWatchDestination resource property to the template.
Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.

Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events.
For information about using configuration sets, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DimensionConfigurations
A list of dimensions upon which to categorize your emails when you publish email sending events to Amazon CloudWatch.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html#cfn-ses-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
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

### Vaporshell.Resource.SES.ConfigurationSetEventDestination.CloudWatchDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html)

