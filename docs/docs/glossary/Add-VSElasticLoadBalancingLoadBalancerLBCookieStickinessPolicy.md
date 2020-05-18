# Add-VSElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy

## SYNOPSIS
Adds an AWS::ElasticLoadBalancing::LoadBalancer.LBCookieStickinessPolicy resource property to the template.
Specifies a policy for duration-based session stickiness for your Classic Load Balancer.

## SYNTAX

```
Add-VSElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy [[-CookieExpirationPeriod] <Object>]
 [[-PolicyName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancing::LoadBalancer.LBCookieStickinessPolicy resource property to the template.
Specifies a policy for duration-based session stickiness for your Classic Load Balancer.

To associate a policy with a listener, use the PolicyNames: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-policynames property for the listener.

## PARAMETERS

### -CookieExpirationPeriod
The time period, in seconds, after which the cookie should be considered stale.
If this parameter is not specified, the stickiness session lasts for the duration of the browser session.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-cookieexpirationperiod
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

### -PolicyName
The name of the policy.
This name must be unique within the set of policies for this load balancer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-policyname
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.LBCookieStickinessPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html)

