# Add-VSECSServicePlacementStrategy

## SYNOPSIS
Adds an AWS::ECS::Service.PlacementStrategy resource property to the template.
The PlacementStrategy property specifies the task placement strategy for a task or service.
For more information, see Task Placement Strategies: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html in the *Amazon Elastic Container Service Developer Guide*.

## SYNTAX

```
Add-VSECSServicePlacementStrategy [[-Field] <Object>] [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.PlacementStrategy resource property to the template.
The PlacementStrategy property specifies the task placement strategy for a task or service.
For more information, see Task Placement Strategies: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html in the *Amazon Elastic Container Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Field
The field to apply the placement strategy against.
For the spread placement strategy, valid values are instanceId or host, which has the same effect, or any platform or custom attribute that is applied to a container instance, such as attribute:ecs.availability-zone.
For the binpack placement strategy, valid values are cpu and memory.
For the random placement strategy, this field is not used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-field
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
The type of placement strategy.
The random placement strategy randomly places tasks on available candidates.
The spread placement strategy spreads placement across available candidates evenly based on the field parameter.
The binpack strategy places tasks on available candidates that have the least available amount of the resource that is specified with the field parameter.
For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory but still enough to run the task.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-type
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

### Vaporshell.Resource.ECS.Service.PlacementStrategy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html)

