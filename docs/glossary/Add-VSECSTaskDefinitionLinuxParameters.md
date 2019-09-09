# Add-VSECSTaskDefinitionLinuxParameters

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template.
The LinuxParameters property specifies Linux-specific options that are applied to the container, such as Linux KernelCapabilities: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html.

## SYNTAX

```
Add-VSECSTaskDefinitionLinuxParameters [[-Capabilities] <Object>] [[-Devices] <Object>]
 [[-InitProcessEnabled] <Boolean>] [[-SharedMemorySize] <Int32>] [[-Tmpfs] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.LinuxParameters resource property to the template.
The LinuxParameters property specifies Linux-specific options that are applied to the container, such as Linux KernelCapabilities: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_KernelCapabilities.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Capabilities
The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.
If you are using tasks that use the Fargate launch type, capabilities is supported but the add parameter is not supported.

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
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
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
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
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
Position: 5
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

