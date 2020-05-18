# Add-VSElasticLoadBalancingV2ListenerAction

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::Listener.Action resource property to the template.
Specifies an action for a listener rule.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerAction [[-AuthenticateCognitoConfig] <Object>]
 [[-AuthenticateOidcConfig] <Object>] [[-FixedResponseConfig] <Object>] [[-ForwardConfig] <Object>]
 [[-Order] <Object>] [[-RedirectConfig] <Object>] [[-TargetGroupArn] <Object>] [-Type] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::Listener.Action resource property to the template.
Specifies an action for a listener rule.

## PARAMETERS

### -AuthenticateCognitoConfig
HTTPS listeners\] Information for using Amazon Cognito to authenticate users.
Specify only when Type is authenticate-cognito.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticatecognitoconfig
Type: AuthenticateCognitoConfig
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

### -AuthenticateOidcConfig
HTTPS listeners\] Information about an identity provider that is compliant with OpenID Connect OIDC.
Specify only when Type is authenticate-oidc.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-authenticateoidcconfig
Type: AuthenticateOidcConfig
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

### -FixedResponseConfig
Application Load Balancer\] Information for creating an action that returns a custom HTTP response.
Specify only when Type is fixed-response.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-fixedresponseconfig
Type: FixedResponseConfig
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

### -ForwardConfig
Information for creating an action that distributes requests among one or more target groups.
For Network Load Balancers, you can specify a single target group.
Specify only when Type is forward.
If you specify both ForwardConfig and TargetGroupArn, you can specify only one target group using ForwardConfig and it must be the same target group specified in TargetGroupArn.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-forwardconfig
Type: ForwardConfig
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

### -Order
The order for the action.
This value is required for rules with multiple actions.
The action with the lowest value for order is performed first.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-order
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedirectConfig
Application Load Balancer\] Information for creating a redirect action.
Specify only when Type is redirect.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-action-redirectconfig
Type: RedirectConfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetGroupArn
The Amazon Resource Name ARN of the target group.
Specify only when Type is forward and you want to route to a single target group.
To route to one or more target groups, use ForwardConfig instead.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-targetgrouparn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The type of action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancingV2.Listener.Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html)

