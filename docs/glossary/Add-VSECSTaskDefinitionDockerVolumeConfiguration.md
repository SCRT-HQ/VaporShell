# Add-VSECSTaskDefinitionDockerVolumeConfiguration

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.DockerVolumeConfiguration resource property to the template.
The DockerVolumeConfiguration property specifies a Docker volume configuration and is used when you use Docker volumes.
Docker volumes are only supported when you are using the EC2 launch type.
Windows containers only support the use of the local driver.
To use bind mounts, specify a host instead.

## SYNTAX

```
Add-VSECSTaskDefinitionDockerVolumeConfiguration [[-Autoprovision] <Object>] [[-Driver] <Object>]
 [[-DriverOpts] <Hashtable>] [[-Labels] <Hashtable>] [[-Scope] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.DockerVolumeConfiguration resource property to the template.
The DockerVolumeConfiguration property specifies a Docker volume configuration and is used when you use Docker volumes.
Docker volumes are only supported when you are using the EC2 launch type.
Windows containers only support the use of the local driver.
To use bind mounts, specify a host instead.

## PARAMETERS

### -Autoprovision
If this value is true, the Docker volume is created if it does not already exist.
This field is only used if the scope is shared.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-autoprovision
PrimitiveType: Boolean
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

### -Driver
The Docker volume driver to use.
The driver value must match the driver name provided by Docker because it is used for task placement.
If the driver was installed using the Docker plugin CLI, use docker plugin ls to retrieve the driver name from your container instance.
If the driver was installed using another method, use Docker plugin discovery to retrieve the driver name.
For more information, see Docker plugin discovery: https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery.
This parameter maps to Driver in the Create a volume: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the xxdriver option to docker volume create: https://docs.docker.com/engine/reference/commandline/volume_create/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-driver
PrimitiveType: String
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

### -DriverOpts
A map of Docker driver-specific options passed through.
This parameter maps to DriverOpts in the Create a volume: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the xxopt option to docker volume create: https://docs.docker.com/engine/reference/commandline/volume_create/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-driveropts
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Labels
Custom metadata to add to your Docker volume.
This parameter maps to Labels in the Create a volume: https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the xxlabel option to docker volume create: https://docs.docker.com/engine/reference/commandline/volume_create/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-labels
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Immutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope for the Docker volume that determines its lifecycle.
Docker volumes that are scoped to a task are automatically provisioned when the task starts and destroyed when the task stops.
Docker volumes that are scoped as shared persist after the task stops.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-scope
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.DockerVolumeConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html)

