# Add-VSElasticLoadBalancingV2ListenerRuleSourceIpConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.SourceIpConfig resource property to the template.
Information about a source IP condition.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleSourceIpConfig [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.SourceIpConfig resource property to the template.
Information about a source IP condition.

You can use this condition to route based on the IP address of the source that connects to the load balancer.
If a client is behind a proxy, this is the IP address of the proxy not the IP address of the client.

## PARAMETERS

### -Values
One or more source IP addresses, in CIDR format.
You can use both IPv4 and IPv6 addresses.
Wildcards are not supported.
If you specify multiple addresses, the condition is satisfied if the source IP address of the request matches one of the CIDR blocks.
This condition is not satisfied by the addresses in the X-Forwarded-For header.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html#cfn-elasticloadbalancingv2-listenerrule-sourceipconfig-values
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.SourceIpConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html)

