# Add-VSPinpointSegmentSegmentGroups

## SYNOPSIS
Adds an AWS::Pinpoint::Segment.SegmentGroups resource property to the template.
Specifies one or more segment groups that apply to a segment.
Each segment group consists of zero or more base segments and the dimensions that are applied to those base segments.

## SYNTAX

```
Add-VSPinpointSegmentSegmentGroups [[-Groups] <Object>] [[-Include] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Segment.SegmentGroups resource property to the template.
Specifies one or more segment groups that apply to a segment.
Each segment group consists of zero or more base segments and the dimensions that are applied to those base segments.

## PARAMETERS

### -Groups
An array that defines the set of segment criteria to evaluate when handling segment groups for the segment.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-groups
ItemType: Groups
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

### -Include
Specifies how to handle multiple segment groups for the segment.
For example, if the segment includes three segment groups, whether the resulting segment includes endpoints that match all, any, or none of the segment groups.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-include
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Pinpoint.Segment.SegmentGroups
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html)

