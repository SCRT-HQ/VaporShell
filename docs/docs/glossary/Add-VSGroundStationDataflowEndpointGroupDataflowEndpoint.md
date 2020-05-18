# Add-VSGroundStationDataflowEndpointGroupDataflowEndpoint

## SYNOPSIS
Adds an AWS::GroundStation::DataflowEndpointGroup.DataflowEndpoint resource property to the template.
Contains information such as socket address and name that defines an endpoint.

## SYNTAX

```
Add-VSGroundStationDataflowEndpointGroupDataflowEndpoint [[-Name] <Object>] [[-Address] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GroundStation::DataflowEndpointGroup.DataflowEndpoint resource property to the template.
Contains information such as socket address and name that defines an endpoint.

## PARAMETERS

### -Name
The endpoint name.
When listing available contacts for a satellite, Ground Station searches for a dataflow endpoint whose name matches the value specified by the dataflow endpoint config of the selected mission profile.
If no matching dataflow endpoints are found then Ground Station will not display any available contacts for the satellite.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html#cfn-groundstation-dataflowendpointgroup-dataflowendpoint-name
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

### -Address
The address and port of an endpoint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html#cfn-groundstation-dataflowendpointgroup-dataflowendpoint-address
UpdateType: Mutable
Type: SocketAddress

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

### Vaporshell.Resource.GroundStation.DataflowEndpointGroup.DataflowEndpoint
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html)

