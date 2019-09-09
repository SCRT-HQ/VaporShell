# Add-VSServiceDiscoveryServiceDnsConfig

## SYNOPSIS
Adds an AWS::ServiceDiscovery::Service.DnsConfig resource property to the template.
A complex type that contains information about the Amazon Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.

## SYNTAX

```
Add-VSServiceDiscoveryServiceDnsConfig [-DnsRecords] <Object> [[-RoutingPolicy] <Object>]
 [[-NamespaceId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ServiceDiscovery::Service.DnsConfig resource property to the template.
A complex type that contains information about the Amazon Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DnsRecords
An array that contains one DnsRecord object for each Route 53 DNS record that you want AWS Cloud Map to create when you register an instance.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-dnsrecords
ItemType: DnsRecord
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

### -RoutingPolicy
The routing policy that you want to apply to all Route 53 DNS records that AWS Cloud Map creates when you register an instance and specify this service.
If you want to use this service to register instances that create alias records, specify WEIGHTED for the routing policy.
You can specify the following values:
**MULTIVALUE**
If you define a health check for the service and the health check is healthy, Route 53 returns the applicable value for up to eight instances.
For example, suppose the service includes configurations for one A record and a health check, and you use the service to register 10 instances.
Route 53 responds to DNS queries with IP addresses for up to eight healthy instances.
If fewer than eight instances are healthy, Route 53 responds to every DNS query with the IP addresses for all of the healthy instances.
If you don't define a health check for the service, Route 53 assumes that all instances are healthy and returns the values for up to eight instances.
For more information about the multivalue routing policy, see Multivalue Answer Routing: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue in the *Route 53 Developer Guide*.
**WEIGHTED**
Route 53 returns the applicable value from one randomly selected instance from among the instances that you registered using the same service.
Currently, all records have the same weight, so you can't route more or less traffic to any instances.
For example, suppose the service includes configurations for one A record and a health check, and you use the service to register 10 instances.
Route 53 responds to DNS queries with the IP address for one randomly selected instance from among the healthy instances.
If no instances are healthy, Route 53 responds to DNS queries as if all of the instances were healthy.
If you don't define a health check for the service, Route 53 assumes that all instances are healthy and returns the applicable value for one randomly selected instance.
For more information about the weighted routing policy, see Weighted Routing: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted in the *Route 53 Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-routingpolicy
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

### -NamespaceId
The ID of the namespace to use for DNS configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-namespaceid
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ServiceDiscovery.Service.DnsConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html)

