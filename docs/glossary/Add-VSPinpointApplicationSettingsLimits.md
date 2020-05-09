# Add-VSPinpointApplicationSettingsLimits

## SYNOPSIS
Adds an AWS::Pinpoint::ApplicationSettings.Limits resource property to the template.
Specifies the default sending limits for campaigns in the application.
You can override these limits for a specific campaign.

## SYNTAX

```
Add-VSPinpointApplicationSettingsLimits [[-Daily] <Object>] [[-MaximumDuration] <Object>] [[-Total] <Object>]
 [[-MessagesPerSecond] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::ApplicationSettings.Limits resource property to the template.
Specifies the default sending limits for campaigns in the application.
You can override these limits for a specific campaign.

## PARAMETERS

### -Daily
The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period.
The maximum value is 100.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-daily
PrimitiveType: Integer
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

### -MaximumDuration
The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign.
The minimum value is 60 seconds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-maximumduration
PrimitiveType: Integer
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

### -Total
The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign.
The maximum value is 100.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-total
PrimitiveType: Integer
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

### -MessagesPerSecond
The maximum number of messages that a campaign can send each second.
The minimum value is 50.
The maximum value is 20,000.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-messagespersecond
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.ApplicationSettings.Limits
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html)

