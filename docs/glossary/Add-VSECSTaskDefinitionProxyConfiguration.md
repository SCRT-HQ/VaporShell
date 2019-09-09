# Add-VSECSTaskDefinitionProxyConfiguration

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.ProxyConfiguration resource property to the template.
The ProxyConfiguration property specifies the details for the App Mesh proxy.

## SYNTAX

```
Add-VSECSTaskDefinitionProxyConfiguration [-ContainerName] <Object> [[-ProxyConfigurationProperties] <Object>]
 [[-Type] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.ProxyConfiguration resource property to the template.
The ProxyConfiguration property specifies the details for the App Mesh proxy.

For tasks using the EC2 launch type, the container instances require at least version 1.26.0 of the container agent and at least version 1.26.0-1 of the ecs-init package to enable a proxy configuration.
If your container instances are launched from the Amazon ECS-optimized AMI version 20190301 or later, then they contain the required versions of the container agent and ecs-init.
For more information, see Amazon ECS-optimized Linux AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html in the *Amazon Elastic Container Service Developer Guide*.

For tasks using the Fargate launch type, the task or service requires platform version 1.3.0 or later.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ContainerName
The name of the container that will serve as the App Mesh proxy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-containername
PrimitiveType: String
UpdateType: Immutable

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

### -ProxyConfigurationProperties
The set of network configuration parameters to provide the Container Network Interface CNI plugin, specified as key-value pairs.
+  IgnoredUID - Required The user ID UID of the proxy container as defined by the user parameter in a container definition.
This is used to ensure the proxy ignores its own traffic.
If IgnoredGID is specified, this field can be empty.
+  IgnoredGID - Required The group ID GID of the proxy container as defined by the user parameter in a container definition.
This is used to ensure the proxy ignores its own traffic.
If IgnoredUID is specified, this field can be empty.
+  AppPorts - Required The list of ports that the application uses.
Network traffic to these ports is forwarded to the ProxyIngressPort and ProxyEgressPort.
+  ProxyIngressPort - Required Specifies the port that incoming traffic to the AppPorts is directed to.
+  ProxyEgressPort - Required Specifies the port that outgoing traffic from the AppPorts is directed to.
+  EgressIgnoredPorts - Required The egress traffic going to the specified ports is ignored and not redirected to the ProxyEgressPort.
It can be an empty list.
+  EgressIgnoredIPs - Required The egress traffic going to the specified IP addresses is ignored and not redirected to the ProxyEgressPort.
It can be an empty list.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-proxyconfigurationproperties
DuplicatesAllowed: False
ItemType: KeyValuePair
Type: List
UpdateType: Immutable

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

### -Type
The proxy type.
The only supported value is APPMESH.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-type
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

### Vaporshell.Resource.ECS.TaskDefinition.ProxyConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html)

