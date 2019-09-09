# Add-VSECSTaskDefinitionSystemControl

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.SystemControl resource property to the template.
A list of namespaced kernel parameters to set in the container.
This parameter maps to Sysctls in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --sysctl option to docker run: https://docs.docker.com/engine/reference/run/.

## SYNTAX

```
Add-VSECSTaskDefinitionSystemControl [-Namespace] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.SystemControl resource property to the template.
A list of namespaced kernel parameters to set in the container.
This parameter maps to Sysctls in the Create a container: https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate section of the Docker Remote API: https://docs.docker.com/engine/api/v1.35/ and the --sysctl option to docker run: https://docs.docker.com/engine/reference/run/.

It is not recommended that you specify network-related systemControls parameters for multiple containers in a single task that also uses either the awsvpc or host network mode for the following reasons:

+ For tasks that use the awsvpc network mode, if you set systemControls for any container, it applies to all containers in the task.
If you set different systemControls for multiple containers in a single task, the container that is started last determines which systemControls take effect.

+ For tasks that use the host network mode, the systemControls parameter applies to the container instance's kernel parameter as well as that of all containers of any tasks running on that container instance.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Namespace
The namespaced kernel parameter for which to set a value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-namespace
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

### -Value
The value for the namespaced kernel parameter specified in namespace.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-value
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskDefinition.SystemControl
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html)

