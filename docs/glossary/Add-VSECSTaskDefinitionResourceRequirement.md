# Add-VSECSTaskDefinitionResourceRequirement

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.ResourceRequirement resource property to the template.
The ResourceRequirement property specifies the type and amount of a resource to assign to a container.
The only supported resource is a GPU.
For more information, see Working with GPUs on Amazon ECS: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html in the *Amazon Elastic Container Service Developer Guide*

## SYNTAX

```
Add-VSECSTaskDefinitionResourceRequirement [-Type] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.ResourceRequirement resource property to the template.
The ResourceRequirement property specifies the type and amount of a resource to assign to a container.
The only supported resource is a GPU.
For more information, see Working with GPUs on Amazon ECS: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html in the *Amazon Elastic Container Service Developer Guide*

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The type of resource to assign to a container.
The only supported value is GPU.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-type
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
The number of physical GPUs the Amazon ECS container agent will reserve for the container.
The number of GPUs reserved for all containers in a task should not exceed the number of available GPUs on the container instance the task is launched on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-value
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

### Vaporshell.Resource.ECS.TaskDefinition.ResourceRequirement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html)

