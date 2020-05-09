# Add-VSECSTaskSetNetworkConfiguration

## SYNOPSIS
Adds an AWS::ECS::TaskSet.NetworkConfiguration resource property to the template.
The network configuration for a task.

## SYNTAX

```
Add-VSECSTaskSetNetworkConfiguration [[-AwsVpcConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskSet.NetworkConfiguration resource property to the template.
The network configuration for a task.

## PARAMETERS

### -AwsVpcConfiguration
The VPC subnets and security groups associated with a task.
All specified subnets and security groups must be from the same VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html#cfn-ecs-taskset-networkconfiguration-awsvpcconfiguration
UpdateType: Immutable
Type: AwsVpcConfiguration

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

### Vaporshell.Resource.ECS.TaskSet.NetworkConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html)

