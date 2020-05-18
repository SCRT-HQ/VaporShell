# Add-VSElasticLoadBalancingV2TargetGroupTargetGroupAttribute

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute resource property to the template.
Specifies a target group attribute.

## SYNTAX

```
Add-VSElasticLoadBalancingV2TargetGroupTargetGroupAttribute [[-Key] <Object>] [[-Value] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute resource property to the template.
Specifies a target group attribute.

## PARAMETERS

### -Key
The name of the attribute.
The following attributes are supported by both Application Load Balancers and Network Load Balancers:
+  deregistration_delay.timeout_seconds - The amount of time, in seconds, for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused.
The range is 0-3600 seconds.
The default value is 300 seconds.
If the target is a Lambda function, this attribute is not supported.
+  stickiness.enabled - Indicates whether sticky sessions are enabled.
The value is true or false.
The default is false.
+  stickiness.type - The type of sticky sessions.
The possible values are lb_cookie for Application Load Balancers or source_ip for Network Load Balancers.
The following attributes are supported only if the load balancer is an Application Load Balancer and the target is an instance or an IP address:
+  load_balancing.algorithm.type - The load balancing algorithm determines how the load balancer selects targets when routing requests.
The value is round_robin or least_outstanding_requests.
The default is round_robin.
+  slow_start.duration_seconds - The time period, in seconds, during which a newly registered target receives an increasing share of the traffic to the target group.
After this time period ends, the target receives its full share of traffic.
The range is 30-900 seconds 15 minutes.
Slow start mode is disabled by default.
+  stickiness.lb_cookie.duration_seconds - The time period, in seconds, during which requests from a client should be routed to the same target.
After this time period expires, the load balancer-generated cookie is considered stale.
The range is 1 second to 1 week 604800 seconds.
The default value is 1 day 86400 seconds.
The following attribute is supported only if the load balancer is an Application Load Balancer and the target is a Lambda function:
+  lambda.multi_value_headers.enabled - Indicates whether the request and response headers that are exchanged between the load balancer and the Lambda function include arrays of values or strings.
The value is true or false.
The default is false.
If the value is false and the request contains a duplicate header field name or query parameter key, the load balancer uses the last value sent by the client.
The following attribute is supported only by Network Load Balancers:
+  proxy_protocol_v2.enabled - Indicates whether Proxy Protocol version 2 is enabled.
The value is true or false.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-key
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

### -Value
The value of the attribute.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-value
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

### Vaporshell.Resource.ElasticLoadBalancingV2.TargetGroup.TargetGroupAttribute
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html)

