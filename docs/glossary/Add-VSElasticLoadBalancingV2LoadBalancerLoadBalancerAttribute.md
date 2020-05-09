# Add-VSElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute resource property to the template.
Specifies an attribute for an Application Load Balancer or a Network Load Balancer.

## SYNTAX

```
Add-VSElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute [[-Key] <Object>] [[-Value] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute resource property to the template.
Specifies an attribute for an Application Load Balancer or a Network Load Balancer.

## PARAMETERS

### -Key
The name of the attribute.
The following attributes are supported by both Application Load Balancers and Network Load Balancers:
+  access_logs.s3.enabled - Indicates whether access logs are enabled.
The value is true or false.
The default is false.
+  access_logs.s3.bucket - The name of the S3 bucket for the access logs.
This attribute is required if access logs are enabled.
The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permissions to write to the bucket.
+  access_logs.s3.prefix - The prefix for the location in the S3 bucket for the access logs.
+  deletion_protection.enabled - Indicates whether deletion protection is enabled.
The value is true or false.
The default is false.
The following attributes are supported by only Application Load Balancers:
+  idle_timeout.timeout_seconds - The idle timeout value, in seconds.
The valid range is 1-4000 seconds.
The default is 60 seconds.
+  routing.http.drop_invalid_header_fields.enabled - Indicates whether HTTP headers with invalid header fields are removed by the load balancer true or routed to targets false.
The default is false.
+  routing.http2.enabled - Indicates whether HTTP/2 is enabled.
The value is true or false.
The default is true.
Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens.
The following attributes are supported by only Network Load Balancers:
+  load_balancing.cross_zone.enabled - Indicates whether cross-zone load balancing is enabled.
The value is true or false.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-key
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-value
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

### Vaporshell.Resource.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttribute
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html)

