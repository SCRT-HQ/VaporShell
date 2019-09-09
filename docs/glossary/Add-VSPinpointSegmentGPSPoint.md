# Add-VSPinpointSegmentGPSPoint

## SYNOPSIS
Adds an AWS::Pinpoint::Segment.GPSPoint resource property to the template.
The GPS coordinates of the endpoint location.

## SYNTAX

```
Add-VSPinpointSegmentGPSPoint [-RangeInKilometers] <Double> [-Coordinates] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Pinpoint::Segment.GPSPoint resource property to the template.
The GPS coordinates of the endpoint location.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -RangeInKilometers
The range, in kilometers, from the GPS coordinates.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-rangeinkilometers
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Coordinates
The GPS coordinates to measure distance from.

Type: Coordinates
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html#cfn-pinpoint-segment-segmentdimensions-location-gpspoint-coordinates
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

### Vaporshell.Resource.Pinpoint.Segment.GPSPoint
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-location-gpspoint.html)

