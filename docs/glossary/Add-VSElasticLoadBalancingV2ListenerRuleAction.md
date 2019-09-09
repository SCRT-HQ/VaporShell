# Add-VSElasticLoadBalancingV2ListenerRuleAction

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.Action resource property to the template.
Specifies an action for a listener rule.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleAction [[-AuthenticateCognitoConfig] <Object>]
 [[-AuthenticateOidcConfig] <Object>] [[-FixedResponseConfig] <Object>] [[-Order] <Int32>]
 [[-RedirectConfig] <Object>] [[-TargetGroupArn] <Object>] [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.Action resource property to the template.
Specifies an action for a listener rule.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AuthenticateCognitoConfig
HTTPS listeners\] Information for using Amazon Cognito to authenticate users.
Specify only when Type is authenticate-cognito.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticatecognitoconfig
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticateoidcconfig
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-fixedresponseconfig
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

### -Order
The order for the action.
This value is required for rules with multiple actions.
The action with the lowest value for order is performed first.
The final action to be performed must be a forward or a fixed-response action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-order
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RedirectConfig
Application Load Balancer\] Information for creating a redirect action.
Specify only when Type is redirect.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listenerrule-action-redirectconfig
Type: RedirectConfig
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

### -TargetGroupArn
The Amazon Resource Name ARN of the target group.
Specify only when Type is forward.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-targetgrouparn
PrimitiveType: String
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

### -Type
The type of action.
Each rule must include exactly one of the following types of actions: forward, fixed-response, or redirect.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html)

