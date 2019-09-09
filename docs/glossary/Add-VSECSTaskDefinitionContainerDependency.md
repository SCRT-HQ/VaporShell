# Add-VSECSTaskDefinitionContainerDependency

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.ContainerDependency resource property to the template.
The ContainerDependency property specifies the dependencies defined for container startup and shutdown.
A container can contain multiple dependencies.
When a dependency is defined for container startup, for container shutdown it is reversed.

## SYNTAX

```
Add-VSECSTaskDefinitionContainerDependency [-Condition] <Object> [-ContainerName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.ContainerDependency resource property to the template.
The ContainerDependency property specifies the dependencies defined for container startup and shutdown.
A container can contain multiple dependencies.
When a dependency is defined for container startup, for container shutdown it is reversed.

Your Amazon ECS container instances require at least version 1.26.0 of the container agent to enable container dependencies.
However, we recommend using the latest container agent version.
For information about checking your agent version and updating to the latest version, see Updating the Amazon ECS Container Agent: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html in the *Amazon Elastic Container Service Developer Guide*.
If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the ecs-init package.
If your container instances are launched from version 20190301 or later, then they contain the required versions of the container agent and ecs-init.
For more information, see Amazon ECS-optimized Linux AMI: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html in the *Amazon Elastic Container Service Developer Guide*.

**Note**

If you are using tasks that use the Fargate launch type, container dependency parameters are not supported.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Condition
The dependency condition of the container.
The following are the available conditions and their behavior:
+  START - This condition emulates the behavior of links and volumes today.
It validates that a dependent container is started before permitting other containers to start.
+  COMPLETE - This condition validates that a dependent container runs to completion exits before permitting other containers to start.
This can be useful for nonessential containers that run a script and then exit.
+  SUCCESS - This condition is the same as COMPLETE, but it also requires that the container exits with a zero status.
+  HEALTHY - This condition validates that the dependent container passes its Docker health check before permitting other containers to start.
This requires that the dependent container has health checks configured.
This condition is confirmed only at task startup.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-condition
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

### -ContainerName
The name of a container.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-containername
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

### Vaporshell.Resource.ECS.TaskDefinition.ContainerDependency
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html)

