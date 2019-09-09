# Add-VSPinpointSegmentSourceSegments

## SYNOPSIS
Adds an AWS::Pinpoint::Segment.SourceSegments resource property to the template.
The base segment to build the segment on.
A base segment, also called a *source segment*, defines the initial population of endpoints for a segment.
When you add dimensions to the segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.

## SYNTAX

```
Add-VSPinpointSegmentSourceSegments [[-Version] <Int32>] [-Id] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Segment.SourceSegments resource property to the template.
The base segment to build the segment on.
A base segment, also called a *source segment*, defines the initial population of endpoints for a segment.
When you add dimensions to the segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify.

You can specify more than one dimensional segment or only one imported segment.
If you specify an imported segment, the segment size estimate that displays on the Amazon Pinpoint console indicates the size of the imported segment without any filters applied to it.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Version
The version number of the source segment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-version
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

### -Id
The unique ID of the source segment.

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

