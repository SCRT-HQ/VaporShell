# Add-VSECSTaskDefinitionPortMapping

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.PortMapping resource property to the template.
The PortMapping property specifies a port mapping.
Port mappings allow containers to access ports on the host container instance to send or receive traffic.
Port mappings are specified as part of the container definition.

## SYNTAX

```
Add-VSECSTaskDefinitionPortMapping [[-ContainerPort] <Int32>] [[-HostPort] <Int32>] [[-Protocol] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.PortMapping resource property to the template.
The PortMapping property specifies a port mapping.
Port mappings allow containers to access ports on the host container instance to send or receive traffic.
Port mappings are specified as part of the container definition.

If you are using containers in a task with the awsvpc or host network mode, exposed ports should be specified using containerPort.
The hostPort can be left blank or it must be the same value as the containerPort.

After a task reaches the RUNNING status, manual and automatic host and container port assignments are visible in the networkBindings section of DescribeTasks: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html API responses.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ContainerPort
The port number on the container that is bound to the user-specified or automatically assigned host port.
If you are using containers in a task with the awsvpc or host network mode, exposed ports should be specified using containerPort.
If you are using containers in a task with the bridge network mode and you specify a container port and not a host port, your container automatically receives a host port in the ephemeral port range.
For more information, see hostPort.
Port mappings that are automatically assigned in this way do not count toward the 100 reserved ports limit of a container instance.
You cannot expose the same container port for multiple protocols.
An error will be returned if this is attempted.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-containerport
PrimitiveType: Integer
UpdateType: Immutable

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

### -HostPort
The port number on the container instance to reserve for your container.
If you are using containers in a task with the awsvpc or host network mode, the hostPort can either be left blank or set to the same value as the containerPort.
If you are using containers in a task with the bridge network mode, you can specify a non-reserved host port for your container port mapping, or you can omit the hostPort or set it to 0 while specifying a containerPort and your container automatically receives a port in the ephemeral port range for your container instance operating system and Docker version.
The default ephemeral port range for Docker version 1.6.0 and later is listed on the instance under /proc/sys/net/ipv4/ip_local_port_range.
If this kernel parameter is unavailable, the default ephemeral port range from 49153 through 65535 is used.
Do not attempt to specify a host port in the ephemeral port range as these are reserved for automatic assignment.
In general, ports below 32768 are outside of the ephemeral port range.
The default ephemeral port range from 49153 through 65535 is always used for Docker versions before 1.6.0.
The default reserved ports are 22 for SSH, the Docker ports 2375 and 2376, and the Amazon ECS container agent ports 51678-51680.
Any host port that was previously specified in a running task is also reserved while the task is running after a task stops, the host port is released.
The current reserved ports are displayed in the remainingResources of DescribeContainerInstances: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeContainerInstances.html output.
A container instance can have up to 100 reserved ports at a time, including the default reserved ports.
Automatically assigned ports don't count toward the 100 reserved ports limit.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-readonly
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
The protocol used for the port mapping.
Valid values are tcp and udp.
The default is tcp.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-sourcevolume
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.PortMapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html)

