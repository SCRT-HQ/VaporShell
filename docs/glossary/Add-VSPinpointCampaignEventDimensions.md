# Add-VSPinpointCampaignEventDimensions

## SYNOPSIS
Adds an AWS::Pinpoint::Campaign.EventDimensions resource property to the template.
Specifies the dimensions for an event filter that determines when a campaign is sent.

## SYNTAX

```
Add-VSPinpointCampaignEventDimensions [[-Metrics] <Object>] [[-EventType] <Object>] [[-Attributes] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Campaign.EventDimensions resource property to the template.
Specifies the dimensions for an event filter that determines when a campaign is sent.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Metrics
One or more custom metrics that your app reports to Amazon Pinpoint.
You can use these metrics as selection criteria when you create an event filter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-metrics
PrimitiveType: Json
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

### -EventType
The name of the event that causes the campaign to be sent.
This can be a standard type of event that Amazon Pinpoint generates, such as _session.start, or a custom event that's specific to your app.

Type: SetDimension
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-eventtype
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

### -Attributes
One or more custom attributes that your app reports to Amazon Pinpoint.
You can use these attributes as selection criteria when you create an event filter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-attributes
PrimitiveType: Json
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.Campaign.EventDimensions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html)

