# Add-VSPinpointCampaignQuietTime

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.QuietTime resource property to the template.
Specifies the start and end times that define a time range when messages aren't sent to endpoints.

## SYNTAX

```
Add-VSPinpointCampaignQuietTime [-Start] <Object> [-End] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.QuietTime resource property to the template.
Specifies the start and end times that define a time range when messages aren't sent to endpoints.

## PARAMETERS

### -Start
The specific time when quiet time begins.
This value has to use 24-hour notation and be in HH:MM format, where HH is the hour with a leading zero, if applicable and MM is the minutes.
For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html#cfn-pinpoint-campaign-schedule-quiettime-start
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

### -End
The specific time when quiet time ends.
This value has to use 24-hour notation and be in HH:MM format, where HH is the hour with a leading zero, if applicable and MM is the minutes.
For example, use 02:30 to represent 2:30 AM, or 14:30 to represent 2:30 PM.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html#cfn-pinpoint-campaign-schedule-quiettime-end
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

### Vaporshell.Resource.Pinpoint.Campaign.QuietTime
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html)

