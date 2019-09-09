# Add-VSAppMeshVirtualNodeHealthCheck

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.HealthCheck resource property to the template.
An object representing the health check policy for a virtual node's listener.

## SYNTAX

```
Add-VSAppMeshVirtualNodeHealthCheck [[-Path] <Object>] [-UnhealthyThreshold] <Int32> [[-Port] <Int32>]
 [-HealthyThreshold] <Int32> [-TimeoutMillis] <Int32> [-Protocol] <Object> [-IntervalMillis] <Int32>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.HealthCheck resource property to the template.
An object representing the health check policy for a virtual node's listener.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Path
The destination path for the health check request.
This is required only if the specified protocol is HTTP.
If the protocol is TCP, this parameter is ignored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-path
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

### -UnhealthyThreshold
The number of consecutive failed health checks that must occur before declaring a virtual node unhealthy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-unhealthythreshold
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Port
The destination port for the health check request.
This port must match the port defined in the PortMapping: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html#cfn-appmesh-virtualrouter-virtualrouterlistener-portmapping for the listener.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-port
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -HealthyThreshold
The number of consecutive successful health checks that must occur before declaring listener healthy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-healthythreshold
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutMillis
The amount of time to wait when receiving a response from the health check, in milliseconds.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-timeoutmillis
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
The protocol for the health check request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-protocol
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IntervalMillis
The time period in milliseconds between each health check execution.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-intervalmillis
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppMesh.VirtualNode.HealthCheck
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html)

