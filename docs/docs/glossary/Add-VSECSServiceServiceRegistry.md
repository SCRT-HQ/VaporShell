# Add-VSECSServiceServiceRegistry

## SYNOPSIS
Adds an AWS::ECS::Service.ServiceRegistry resource property to the template.
The ServiceRegistry property specifies details of the service registry.

## SYNTAX

```
Add-VSECSServiceServiceRegistry [[-ContainerName] <Object>] [[-ContainerPort] <Object>] [[-Port] <Object>]
 [[-RegistryArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.ServiceRegistry resource property to the template.
The ServiceRegistry property specifies details of the service registry.

## PARAMETERS

### -ContainerName
The container name value, already specified in the task definition, to be used for your service discovery service.
If the task definition that your service task specifies uses the bridge or host network mode, you must specify a containerName and containerPort combination from the task definition.
If the task definition that your service task specifies uses the awsvpc network mode and a type SRV DNS record is used, you must specify either a containerName and containerPort combination or a port value, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-containername
PrimitiveType: String
UpdateType: Immutable

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

### -ContainerPort
The port value, already specified in the task definition, to be used for your service discovery service.
If the task definition your service task specifies uses the bridge or host network mode, you must specify a containerName and containerPort combination from the task definition.
If the task definition your service task specifies uses the awsvpc network mode and a type SRV DNS record is used, you must specify either a containerName and containerPort combination or a port value, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-containerport
PrimitiveType: Integer
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

### -Port
The port value used if your service discovery service specified an SRV record.
This field may be used if both the awsvpc network mode and SRV records are used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-port
PrimitiveType: Integer
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

### -RegistryArn
The Amazon Resource Name ARN of the service registry.
The currently supported service registry is AWS Cloud Map.
For more information, see CreateService: https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-registryarn
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.Service.ServiceRegistry
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html)

