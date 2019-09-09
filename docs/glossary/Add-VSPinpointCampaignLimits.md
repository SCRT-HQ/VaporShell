# Add-VSPinpointCampaignLimits

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.Limits resource property to the template.
Specifies the limits on the messages that a campaign can send.

## SYNTAX

```
Add-VSPinpointCampaignLimits [[-Daily] <Int32>] [[-MaximumDuration] <Int32>] [[-Total] <Int32>]
 [[-MessagesPerSecond] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.Limits resource property to the template.
Specifies the limits on the messages that a campaign can send.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Daily
The maximum number of messages that a campaign can send to a single endpoint during a 24-hour period.
The maximum value is 100.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-daily
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaximumDuration
The maximum amount of time, in seconds, that a campaign can attempt to deliver a message after the scheduled start time for the campaign.
The minimum value is 60 seconds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-maximumduration
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Total
The maximum number of messages that a campaign can send to a single endpoint during the course of the campaign.
The maximum value is 100.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-total
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MessagesPerSecond
The maximum number of messages that a campaign can send each second.
The minimum value is 50.
The maximum value is 20,000.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-messagespersecond
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.Campaign.Limits
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html)

