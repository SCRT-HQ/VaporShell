# Add-VSElasticLoadBalancingV2ListenerForwardConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::Listener.ForwardConfig resource property to the template.
Information for creating an action that distributes requests among one or more target groups.
For Network Load Balancers, you can specify a single target group.
Specify only when Type is forward.
If you specify both ForwardConfig and TargetGroupArn, you can specify only one target group using ForwardConfig and it must be the same target group specified in TargetGroupArn.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerForwardConfig [[-TargetGroupStickinessConfig] <Object>]
 [[-TargetGroups] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::Listener.ForwardConfig resource property to the template.
Information for creating an action that distributes requests among one or more target groups.
For Network Load Balancers, you can specify a single target group.
Specify only when Type is forward.
If you specify both ForwardConfig and TargetGroupArn, you can specify only one target group using ForwardConfig and it must be the same target group specified in TargetGroupArn.

## PARAMETERS

### -TargetGroupStickinessConfig
Information about the target group stickiness for a rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html#cfn-elasticloadbalancingv2-listener-forwardconfig-targetgroupstickinessconfig
Type: TargetGroupStickinessConfig
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

### -TargetGroups
Information about how traffic will be distributed between multiple target groups in a forward rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html#cfn-elasticloadbalancingv2-listener-forwardconfig-targetgroups
DuplicatesAllowed: False
ItemType: TargetGroupTuple
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancingV2.Listener.ForwardConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html)

