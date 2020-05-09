# Add-VSGroundStationMissionProfileDataflowEdge

## SYNOPSIS
Adds an AWS::GroundStation::MissionProfile.DataflowEdge resource property to the template.
A dataflow edge defines from where and to where data will flow during a contact.

## SYNTAX

```
Add-VSGroundStationMissionProfileDataflowEdge [[-Source] <Object>] [[-Destination] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GroundStation::MissionProfile.DataflowEdge resource property to the template.
A dataflow edge defines from where and to where data will flow during a contact.

## PARAMETERS

### -Source
The ARN of the source for this dataflow edge.
For example, specify the ARN of an antenna downlink config for a downlink edge or a dataflow endpoint config for an uplink edge.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html#cfn-groundstation-missionprofile-dataflowedge-source
UpdateType: Mutable
PrimitiveType: String

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

### -Destination
The ARN of the destination for this dataflow edge.
For example, specify the ARN of a dataflow endpoint config for a downlink edge or an antenna uplink config for an uplink edge.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html#cfn-groundstation-missionprofile-dataflowedge-destination
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.GroundStation.MissionProfile.DataflowEdge
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-dataflowedge.html)

