# Add-VSPinpointSegmentSourceSegments

## SYNOPSIS
Adds an AWS::Pinpoint::Segment.SourceSegments resource property to the template.
Specifies the base segment to build a segment on.
A base segment, also referred to as a *source segment*, defines the initial population of endpoints for a segment.
When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.
You can specify more than one dimensional segment or only one imported segment.

## SYNTAX

```
Add-VSPinpointSegmentSourceSegments [[-Version] <Object>] [-Id] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Segment.SourceSegments resource property to the template.
Specifies the base segment to build a segment on.
A base segment, also referred to as a *source segment*, defines the initial population of endpoints for a segment.
When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.
You can specify more than one dimensional segment or only one imported segment.

## PARAMETERS

### -Version
The version number of the segment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-version
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

### -Id
The unique identifier for the segment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-id
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

### Vaporshell.Resource.Pinpoint.Segment.SourceSegments
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html)

