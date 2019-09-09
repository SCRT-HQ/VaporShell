# Add-VSPinpointEmailConfigurationSetEventDestinationDimensionConfiguration

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.DimensionConfiguration resource property to the template.
An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetEventDestinationDimensionConfiguration [-DimensionValueSource] <Object>
 [-DefaultDimensionValue] <Object> [-DimensionName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.DimensionConfiguration resource property to the template.
An array of objects that define the dimensions to use when you send email events to Amazon CloudWatch.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DimensionValueSource
The location where Amazon Pinpoint finds the value of a dimension to publish to Amazon CloudWatch.
Acceptable values: MESSAGE_TAG, EMAIL_HEADER, and LINK_TAG.
If you want Amazon Pinpoint to use the message tags that you specify using an X-SES-MESSAGE-TAGS header or a parameter to the SendEmail API, choose MESSAGE_TAG.
If you want Amazon Pinpoint to use your own email headers, choose EMAIL_HEADER.
If you want Amazon Pinpoint to use tags that are specified in your links, choose LINK_TAG.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
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
The default value of the dimension that is published to Amazon CloudWatch if you don't provide the value of the dimension when you send an email.
This value has to meet the following criteria:
+ It can only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ It can contain no more than 256 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
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
The name has to meet the following criteria:
+ It can only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ It can contain no more than 256 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionname
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

### Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.DimensionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html)

