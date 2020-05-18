# Add-VSElasticLoadBalancingLoadBalancerHealthCheck

## SYNOPSIS
Adds an AWS::ElasticLoadBalancing::LoadBalancer.HealthCheck resource property to the template.
Specifies health check settings for your Classic Load Balancer.

## SYNTAX

```
Add-VSElasticLoadBalancingLoadBalancerHealthCheck [-HealthyThreshold] <Object> [-Interval] <Object>
 [-Target] <Object> [-Timeout] <Object> [-UnhealthyThreshold] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancing::LoadBalancer.HealthCheck resource property to the template.
Specifies health check settings for your Classic Load Balancer.

## PARAMETERS

### -HealthyThreshold
The number of consecutive health checks successes required before moving the instance to the Healthy state.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-healthythreshold
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Interval
The approximate interval, in seconds, between health checks of an individual instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-interval
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

### -Target
The instance being checked.
The protocol is either TCP, HTTP, HTTPS, or SSL.
The range of valid ports is one 1 through 65535.
TCP is the default, specified as a TCP: port pair, for example "TCP:5000".
In this case, a health check simply attempts to open a TCP connection to the instance on the specified port.
Failure to connect within the configured timeout is considered unhealthy.
SSL is also specified as SSL: port pair, for example, SSL:5000.
For HTTP/HTTPS, you must include a ping path in the string.
HTTP is specified as a HTTP:port;/;PathToPing; grouping, for example "HTTP:80/weather/us/wa/seattle".
In this case, a HTTP GET request is issued to the instance on the given port and path.
Any answer other than "200 OK" within the timeout period is considered unhealthy.
The total length of the HTTP ping target must be 1024 16-bit Unicode characters or less.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-target
PrimitiveType: String
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

### -Timeout
The amount of time, in seconds, during which no response means a failed health check.
This value must be less than the Interval value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-timeout
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnhealthyThreshold
The number of consecutive health check failures required before moving the instance to the Unhealthy state.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-unhealthythreshold
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticLoadBalancing.LoadBalancer.HealthCheck
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html)

