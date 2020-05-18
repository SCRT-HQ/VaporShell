# Add-VSGameLiftFleetIpPermission

## SYNOPSIS
Adds an AWS::GameLift::Fleet.IpPermission resource property to the template.
A range of IP addresses and port settings that allow inbound traffic to connect to server processes on an Amazon GameLift hosting resource.
New game sessions that are started on the fleet are assigned an IP address/port number combination, which must fall into the fleet's allowed ranges.
For fleets created with a custom game server, the ranges reflect the server's game session assignments.
For Realtime Servers fleets, Amazon GameLift automatically opens two port ranges, one for TCP messaging and one for UDP, for use by the Realtime servers.

## SYNTAX

```
Add-VSGameLiftFleetIpPermission [-FromPort] <Object> [-IpRange] <Object> [-Protocol] <Object>
 [-ToPort] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Fleet.IpPermission resource property to the template.
A range of IP addresses and port settings that allow inbound traffic to connect to server processes on an Amazon GameLift hosting resource.
New game sessions that are started on the fleet are assigned an IP address/port number combination, which must fall into the fleet's allowed ranges.
For fleets created with a custom game server, the ranges reflect the server's game session assignments.
For Realtime Servers fleets, Amazon GameLift automatically opens two port ranges, one for TCP messaging and one for UDP, for use by the Realtime servers.

## PARAMETERS

### -FromPort
A starting value for a range of allowed port numbers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-fromport
PrimitiveType: Integer
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

### -IpRange
A range of allowed IP addresses.
This value must be expressed in CIDR notation.
Example: "000.000.000.000/subnet mask\]" or optionally the shortened version "0.0.0.0/subnet mask\]".

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-iprange
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

### -Protocol
The network communication protocol used by the fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-protocol
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToPort
An ending value for a range of allowed port numbers.
Port numbers are end-inclusive.
This value must be higher than FromPort.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-toport
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GameLift.Fleet.IpPermission
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html)

