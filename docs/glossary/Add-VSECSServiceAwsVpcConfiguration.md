# Add-VSECSServiceAwsVpcConfiguration

## SYNOPSIS
Adds an AWS::ECS::Service.AwsVpcConfiguration resource property to the template.
The AwsVpcConfiguration property specifies an object representing the networking details for a task or service.

## SYNTAX

```
Add-VSECSServiceAwsVpcConfiguration [[-AssignPublicIp] <Object>] [[-SecurityGroups] <Object>]
 [-Subnets] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.AwsVpcConfiguration resource property to the template.
The AwsVpcConfiguration property specifies an object representing the networking details for a task or service.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AssignPublicIp
Whether the task's elastic network interface receives a public IP address.
The default value is DISABLED.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-assignpublicip
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
The security groups associated with the task or service.
If you do not specify a security group, the default security group for the VPC is used.
There is a limit of 5 security groups that can be specified per AwsVpcConfiguration.
All specified security groups must be from the same VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-securitygroups
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
The subnets associated with the task or service.
There is a limit of 16 subnets that can be specified per AwsVpcConfiguration.
All specified subnets must be from the same VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-subnets
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

### Vaporshell.Resource.ECS.Service.AwsVpcConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html)

