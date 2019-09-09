# Add-VSSESConfigurationSetEventDestinationDimensionConfiguration

## SYNOPSIS
Adds an AWS::SES::ConfigurationSetEventDestination.DimensionConfiguration resource property to the template.
Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.

## SYNTAX

```
Add-VSSESConfigurationSetEventDestinationDimensionConfiguration [-DimensionValueSource] <Object>
 [-DefaultDimensionValue] <Object> [-DimensionName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ConfigurationSetEventDestination.DimensionConfiguration resource property to the template.
Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.

For information about publishing email sending events to Amazon CloudWatch, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/event-publishing-add-event-destination-cloudwatch.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DimensionValueSource
The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch.
If you want Amazon SES to use the message tags that you specify using an X-SES-MESSAGE-TAGS header or a parameter to the SendEmail or SendRawEmail API, choose messageTag.
If you want Amazon SES to use your own email headers, choose emailHeader.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
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

### -DefaultDimensionValue
The default value of the dimension that is published to Amazon CloudWatch if you do not provide the value of the dimension when you send an email.
The default value must:
+ Only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ Contain 256 or fewer characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
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

### -DimensionName
The name of an Amazon CloudWatch dimension associated with an email sending metric.
The name must:
+ Only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ Contain 256 or fewer characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionname
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SES.ConfigurationSetEventDestination.DimensionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html)

