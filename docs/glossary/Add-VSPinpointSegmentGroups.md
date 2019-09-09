# Add-VSPinpointSegmentGroups

## SYNOPSIS
Adds an AWS::Pinpoint::Segment.Groups resource property to the template.
An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.

## SYNTAX

```
Add-VSPinpointSegmentGroups [[-Type] <Object>] [[-SourceType] <Object>] [[-Dimensions] <Object>]
 [[-SourceSegments] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Segment.Groups resource property to the template.
An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
Specifies how to handle multiple dimensions for the segment.
For example, if you specify three dimensions for the segment, whether the resulting segment includes endpoints that match all, any, or none of the dimensions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-type
PrimitiveType: String
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

### -SourceType
Specifies how to handle multiple base segments for the segment.
For example, if you specify three base segments for the segment, whether the resulting segment is based on all, any, or none of the base segments.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcetype
PrimitiveType: String
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

### -Dimensions
An array that defines the dimensions to include or exclude from the segment.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-dimensions
ItemType: SegmentDimensions
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

### -SourceSegments
The base segment to build the segment on.
A base segment, also called a *source segment*, defines the initial population of endpoints for a segment.
When you add dimensions to the segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.
You can specify more than one dimensional segment or only one imported segment.
If you specify an imported segment, the segment size estimate that displays on the Amazon Pinpoint console indicates the size of the imported segment without any filters applied to it.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments
ItemType: SourceSegments
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

### Vaporshell.Resource.Pinpoint.Segment.Groups
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html)

