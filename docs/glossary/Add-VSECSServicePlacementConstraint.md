# Add-VSECSServicePlacementConstraint

## SYNOPSIS
Adds an AWS::ECS::Service.PlacementConstraint resource property to the template.
The PlacementConstraint property specifies an object representing a constraint on task placement in the task definition.
For more information, see Task Placement Constraints: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html in the *Amazon Elastic Container Service Developer Guide*.

## SYNTAX

```
Add-VSECSServicePlacementConstraint [[-Expression] <Object>] [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.PlacementConstraint resource property to the template.
The PlacementConstraint property specifies an object representing a constraint on task placement in the task definition.
For more information, see Task Placement Constraints: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html in the *Amazon Elastic Container Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Expression
A cluster query language expression to apply to the constraint.
You cannot specify an expression if the constraint type is distinctInstance.
For more information, see Cluster Query Language: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-expression
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
Use distinctInstance to ensure that each task in a particular group is running on a different container instance.
Use memberOf to restrict the selection to a group of valid candidates.
The value distinctInstance is not supported in task definitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-type
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

### Vaporshell.Resource.ECS.Service.PlacementConstraint
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html)

