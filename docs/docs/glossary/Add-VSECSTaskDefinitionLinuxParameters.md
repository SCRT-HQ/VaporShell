# Add-VSECSTaskDefinitionLinuxParameters

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template.
The LinuxParameters property specifies Linux-specific options that are applied to the container, such as Linux KernelCapabilities: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html.

## SYNTAX

```
Add-VSECSTaskDefinitionLinuxParameters [[-Capabilities] <Object>] [[-Devices] <Object>]
 [[-InitProcessEnabled] <Object>] [[-MaxSwap] <Object>] [[-SharedMemorySize] <Object>] [[-Swappiness] <Object>]
 [[-Tmpfs] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template.
The LinuxParameters property specifies Linux-specific options that are applied to the container, such as Linux KernelCapabilities: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html.

## PARAMETERS

### -Capabilities
The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.
For tasks that use the Fargate launch type, capabilities is supported for all platform versions but the add parameter is only supported if using platform version 1.4.0 or later.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-capabilities
Type: KernelCapabilities
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

### -Devices
Any host devices to expose to the container.
This parameter maps to Devices in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --device option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the devices parameter is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-devices
DuplicatesAllowed: False
ItemType: Device
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

### -InitProcessEnabled
Run an init process inside the container that forwards signals and reaps processes.
This parameter maps to the --init option to docker run: https://docs.docker.com/engine/reference/run/.
This parameter requires version 1.25 of the Docker Remote API or greater on your container instance.
To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: sudo docker version --format '{{.Server.APIVersion}}'

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-initprocessenabled
PrimitiveType: Boolean
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

### -MaxSwap
The total amount of swap memory in MiB a container can use.
This parameter will be translated to the --memory-swap option to docker run: https://docs.docker.com/engine/reference/run/ where the value would be the sum of the container memory plus the maxSwap value.
If a maxSwap value of 0 is specified, the container will not use swap.
Accepted values are 0 or any positive integer.
If the maxSwap parameter is omitted, the container will use the swap configuration for the container instance it is running on.
A maxSwap value must be set for the swappiness parameter to be used.
If you are using tasks that use the Fargate launch type, the maxSwap parameter is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-maxswap
PrimitiveType: Integer
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

### -SharedMemorySize
The value for the size in MiB of the /dev/shm volume.
This parameter maps to the --shm-size option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the sharedMemorySize parameter is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-sharedmemorysize
PrimitiveType: Integer
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

### -Swappiness
This allows you to tune a container's memory swappiness behavior.
A swappiness value of 0 will cause swapping to not happen unless absolutely necessary.
A swappiness value of 100 will cause pages to be swapped very aggressively.
Accepted values are whole numbers between 0 and 100.
If the swappiness parameter is not specified, a default value of 60 is used.
If a value is not specified for maxSwap then this parameter is ignored.
This parameter maps to the --memory-swappiness option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the swappiness parameter is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-swappiness
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tmpfs
The container path, mount options, and size in MiB of the tmpfs mount.
This parameter maps to the --tmpfs option to docker run: https://docs.docker.com/engine/reference/run/.
If you are using tasks that use the Fargate launch type, the tmpfs parameter is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-tmpfs
DuplicatesAllowed: False
ItemType: Tmpfs
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.LinuxParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html)

