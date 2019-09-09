# Add-VSECSTaskDefinitionHostVolumeProperties

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.HostVolumeProperties resource property to the template.
The HostVolumeProperties property specifies details on a container instance bind mount host volume.

## SYNTAX

```
Add-VSECSTaskDefinitionHostVolumeProperties [[-SourcePath] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.HostVolumeProperties resource property to the template.
The HostVolumeProperties property specifies details on a container instance bind mount host volume.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SourcePath
When the host parameter is used, specify a sourcePath to declare the path on the host container instance that is presented to the container.
If this parameter is empty, then the Docker daemon has assigned a host path for you.
If the host parameter contains a sourcePath file location, then the data volume persists at the specified location on the host container instance until you delete it manually.
If the sourcePath value does not exist on the host container instance, the Docker daemon creates it.
If the location does exist, the contents of the source path folder are exported.
If you are using the Fargate launch type, the sourcePath parameter is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html#cfn-ecs-taskdefinition-volumes-host-sourcepath
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.HostVolumeProperties
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html)

