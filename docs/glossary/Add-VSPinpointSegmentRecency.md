# Add-VSPinpointSegmentRecency

## SYNOPSIS
Adds an AWS::Pinpoint::Segment.Recency resource property to the template.
Specifies how recently segment members were active.

## SYNTAX

```
Add-VSPinpointSegmentRecency [-Duration] <Object> [-RecencyType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Segment.Recency resource property to the template.
Specifies how recently segment members were active.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Duration
The duration to use when determining which users have been active or inactive with your app.
Possible values: HR_24 | DAY_7 | DAY_14 | DAY_30.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-duration
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

### -RecencyType
The type of recency dimension to use for the segment.
Valid values are: ACTIVE and INACTIVE.
If the value is ACTIVE, the segment includes users who have used your app within the specified duration are included in the segment.
If the value is INACTIVE, the segment includes users who haven't used your app within the specified duration are included in the segment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html#cfn-pinpoint-segment-segmentdimensions-behavior-recency-recencytype
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

### Vaporshell.Resource.Pinpoint.Segment.Recency
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-behavior-recency.html)

