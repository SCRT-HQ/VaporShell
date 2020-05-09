# Add-VSECSTaskDefinitionTaskDefinitionPlacementConstraint

## SYNOPSIS
Adds an AWS::ECS::TaskDefinition.TaskDefinitionPlacementConstraint resource property to the template.
The TaskDefinitionPlacementConstraint property specifies an object representing a constraint on task placement in the task definition.

## SYNTAX

```
Add-VSECSTaskDefinitionTaskDefinitionPlacementConstraint [[-Expression] <Object>] [-Type] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskDefinition.TaskDefinitionPlacementConstraint resource property to the template.
The TaskDefinitionPlacementConstraint property specifies an object representing a constraint on task placement in the task definition.

If you are using the Fargate launch type, task placement constraints are not supported.

For more information, see Task Placement Constraints: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html in the *Amazon Elastic Container Service Developer Guide*.

## PARAMETERS

### -Expression
A cluster query language expression to apply to the constraint.
For more information, see Cluster Query Language: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-expression
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

### -Type
The type of constraint.
The MemberOf constraint restricts selection to be from a group of valid candidates.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-type
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

### Vaporshell.Resource.ECS.TaskDefinition.TaskDefinitionPlacementConstraint
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html)

