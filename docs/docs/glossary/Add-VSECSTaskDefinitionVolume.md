# Add-VSECSTaskDefinitionVolume

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.Volume resource property to the template.
The Volume property specifies a data volume used in a task definition.
For tasks that use a Docker volume, specify a DockerVolumeConfiguration.
For tasks that use a bind mount host volume, specify a host and optional sourcePath.
For more information, see Using Data Volumes in Tasks: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html.

## SYNTAX

```
Add-VSECSTaskDefinitionVolume [[-DockerVolumeConfiguration] <Object>] [[-Host] <Object>] [[-Name] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.Volume resource property to the template.
The Volume property specifies a data volume used in a task definition.
For tasks that use a Docker volume, specify a DockerVolumeConfiguration.
For tasks that use a bind mount host volume, specify a host and optional sourcePath.
For more information, see Using Data Volumes in Tasks: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html.

## PARAMETERS

### -DockerVolumeConfiguration
This parameter is specified when you are using Docker volumes.
Docker volumes are only supported when you are using the EC2 launch type.
Windows containers only support the use of the local driver.
To use bind mounts, specify the host parameter instead.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volume-dockervolumeconfiguration
Type: DockerVolumeConfiguration
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

### -Host
This parameter is specified when you are using bind mount host volumes.
Bind mount host volumes are supported when you are using either the EC2 or Fargate launch types.
The contents of the host parameter determine whether your bind mount host volume persists on the host container instance and where it is stored.
If the host parameter is empty, then the Docker daemon assigns a host path for your data volume.
However, the data is not guaranteed to persist after the containers associated with it stop running.
Windows containers can mount whole directories on the same drive as $env:ProgramData.
Windows containers cannot mount directories on a different drive, and mount point cannot be across drives.
For example, you can mount C:mypath:C:mypath and D::D:, but not D:mypath:C:mypath or D::C:mypath.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volumes-host
Type: HostVolumeProperties
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

### -Name
The name of the volume.
Up to 255 letters uppercase and lowercase, numbers, and hyphens are allowed.
This name is referenced in the sourceVolume parameter of container definition mountPoints.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volumes-name
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

### Vaporshell.Resource.ECS.TaskDefinition.Volume
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html)

