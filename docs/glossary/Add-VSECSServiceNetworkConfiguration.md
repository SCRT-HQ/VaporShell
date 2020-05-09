# Add-VSECSServiceNetworkConfiguration

## SYNOPSIS
Adds an AWS::ECS::Service.NetworkConfiguration resource property to the template.
The NetworkConfiguration property specifies an object representing the network configuration for a task or service.

## SYNTAX

```
Add-VSECSServiceNetworkConfiguration [[-AwsvpcConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ECS::Service.NetworkConfiguration resource property to the template.
The NetworkConfiguration property specifies an object representing the network configuration for a task or service.

## PARAMETERS

### -AwsvpcConfiguration
The VPC subnets and security groups associated with a task.
All specified subnets and security groups must be from the same VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html#cfn-ecs-service-networkconfiguration-awsvpcconfiguration
Type: AwsVpcConfiguration
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ECS.Service.NetworkConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html)

