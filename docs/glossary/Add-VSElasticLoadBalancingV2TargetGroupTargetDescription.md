# Add-VSElasticLoadBalancingV2TargetGroupTargetDescription

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::TargetGroup.TargetDescription resource property to the template.
Specifies a target to add to a target group.

## SYNTAX

```
Add-VSElasticLoadBalancingV2TargetGroupTargetDescription [[-AvailabilityZone] <Object>] [-Id] <Object>
 [[-Port] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::TargetGroup.TargetDescription resource property to the template.
Specifies a target to add to a target group.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AvailabilityZone
An Availability Zone or all.
This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer.
This parameter is not supported if the target type of the target group is instance.
If the target type is ip and the IP address is in a subnet of the VPC for the target group, the Availability Zone is automatically detected and this parameter is optional.
If the IP address is outside the VPC, this parameter is required.
With an Application Load Balancer, if the target type is ip and the IP address is outside the VPC for the target group, the only supported value is all.
If the target type is lambda, this parameter is optional and the only supported value is all.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-availabilityzone
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

### -Id
The ID of the target.
If the target type of the target group is instance, specify an instance ID.
If the target type is ip, specify an IP address.
If the target type is lambda, specify the ARN of the Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-id
PrimitiveType: String
UpdateType: Mutable

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

### -Port
The port on which the target is listening.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html#cfn-elasticloadbalancingv2-targetgroup-targetdescription-port
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancingV2.TargetGroup.TargetDescription
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetdescription.html)

