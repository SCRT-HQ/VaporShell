# Add-VSEventsRuleEcsParameters

## SYNOPSIS
Adds an AWS::Events::Rule.EcsParameters resource property to the template.
The EcsParameters property type specifies custom parameters to be used when the target is an Amazon ECS task.

## SYNTAX

```
Add-VSEventsRuleEcsParameters [[-Group] <Object>] [[-LaunchType] <Object>] [[-NetworkConfiguration] <Object>]
 [[-PlatformVersion] <Object>] [[-TaskCount] <Int32>] [-TaskDefinitionArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.EcsParameters resource property to the template.
The EcsParameters property type specifies custom parameters to be used when the target is an Amazon ECS task.

EcsParameters is a property of the Target: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Group
Specifies an ECS task group for the task.
The maximum length is 255 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-group
PrimitiveType: String
UpdateType: Mutable

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

### -LaunchType
Specifies the launch type on which your task is running.
The launch type that you specify here must match one of the launch type compatibilities of the target task.
The FARGATE value is supported only in the Regions where AWS Fargate with Amazon ECS is supported.
For more information, see AWS Fargate on Amazon ECS: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-launchtype
PrimitiveType: String
UpdateType: Mutable

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

### -NetworkConfiguration
Use this structure if the ECS task uses the awsvpc network mode.
This structure specifies the VPC subnets and security groups associated with the task and whether a public IP address is to be used.
This structure is required if LaunchType is FARGATE because the awsvpc mode is required for Fargate tasks.
If you specify NetworkConfiguration when the target ECS task doesn't use the awsvpc network mode, the task fails.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-networkconfiguration
Type: NetworkConfiguration
UpdateType: Mutable

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

### -PlatformVersion
Specifies the platform version for the task.
Specify only the numeric portion of the platform version, such as 1.1.0.
This structure is used only if LaunchType is FARGATE.
For more information about valid platform versions, see AWS Fargate Platform Versions: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html in the *Amazon Elastic Container Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-platformversion
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaskCount
The number of tasks to create based on TaskDefinition.
The default is 1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskcount
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaskDefinitionArn
The ARN of the task definition to use.
If no task revision is supplied, it defaults to the most recent revision at the time of resource creation.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskdefinitionarn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Events.Rule.EcsParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html)

