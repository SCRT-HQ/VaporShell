# Add-VSEventsRuleAwsVpcConfiguration

## SYNOPSIS
Adds an AWS::Events::Rule.AwsVpcConfiguration resource property to the template.
This structure specifies the VPC subnets and security groups for the task and whether a public IP address is to be used.
This structure is relevant only for ECS tasks that use the awsvpc network mode.

## SYNTAX

```
Add-VSEventsRuleAwsVpcConfiguration [[-AssignPublicIp] <Object>] [[-SecurityGroups] <Object>]
 [-Subnets] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.AwsVpcConfiguration resource property to the template.
This structure specifies the VPC subnets and security groups for the task and whether a public IP address is to be used.
This structure is relevant only for ECS tasks that use the awsvpc network mode.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AssignPublicIp
Specifies whether the task's elastic network interface receives a public IP address.
You can specify ENABLED only when LaunchType in EcsParameters is set to FARGATE.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-assignpublicip
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

### -SecurityGroups
Specifies the security groups associated with the task.
These security groups must all be in the same VPC.
You can specify as many as five security groups.
If you don't specify a security group, the default security group for the VPC is used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-securitygroups
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -Subnets
Specifies the subnets associated with the task.
These subnets must all be in the same VPC.
You can specify as many as 16 subnets.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-subnets
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
UpdateType: Mutable

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

### Vaporshell.Resource.Events.Rule.AwsVpcConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html)

