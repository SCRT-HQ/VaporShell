# Add-VSECSTaskSetAwsVpcConfiguration

## SYNOPSIS
Adds an AWS::ECS::TaskSet.AwsVpcConfiguration resource property to the template.
The networking details for a task.

## SYNTAX

```
Add-VSECSTaskSetAwsVpcConfiguration [[-AssignPublicIp] <Object>] [[-SecurityGroups] <Object>]
 [-Subnets] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::TaskSet.AwsVpcConfiguration resource property to the template.
The networking details for a task.

## PARAMETERS

### -AssignPublicIp
Whether the task's elastic network interface receives a public IP address.
The default value is DISABLED.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-assignpublicip
UpdateType: Immutable
PrimitiveType: String

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

### -SecurityGroups
The security groups associated with the task or service.
If you do not specify a security group, the default security group for the VPC is used.
There is a limit of 5 security groups that can be specified per AwsVpcConfiguration.
All specified security groups must be from the same VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-securitygroups
UpdateType: Immutable
Type: List
PrimitiveItemType: String

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

### -Subnets
The subnets associated with the task or service.
There is a limit of 16 subnets that can be specified per AwsVpcConfiguration.
All specified subnets must be from the same VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-subnets
UpdateType: Immutable
Type: List
PrimitiveItemType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.TaskSet.AwsVpcConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html)

