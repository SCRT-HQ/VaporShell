# Add-VSRoute53ResolverResolverEndpointIpAddressRequest

## SYNOPSIS
Adds an AWS::Route53Resolver::ResolverEndpoint.IpAddressRequest resource property to the template.
In a CreateResolverEndpoint: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html request, the IP address that DNS queries originate from (for outbound endpoints or that you forward DNS queries to (for inbound endpoints.
IpAddressRequest also includes the ID of the subnet that contains the IP address.

## SYNTAX

```
Add-VSRoute53ResolverResolverEndpointIpAddressRequest [[-Ip] <Object>] [-SubnetId] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53Resolver::ResolverEndpoint.IpAddressRequest resource property to the template.
In a CreateResolverEndpoint: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html request, the IP address that DNS queries originate from (for outbound endpoints or that you forward DNS queries to (for inbound endpoints.
IpAddressRequest also includes the ID of the subnet that contains the IP address.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Ip
The IP address that you want to use for DNS queries.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-ip
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

### -SubnetId
The ID of the subnet that contains the IP address.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-subnetid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Route53Resolver.ResolverEndpoint.IpAddressRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html)

