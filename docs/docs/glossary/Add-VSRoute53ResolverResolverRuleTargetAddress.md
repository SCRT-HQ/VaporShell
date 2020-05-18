# Add-VSRoute53ResolverResolverRuleTargetAddress

## SYNOPSIS
Adds an AWS::Route53Resolver::ResolverRule.TargetAddress resource property to the template.
In a CreateResolverRule: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html request, an array of the IPs that you want to forward DNS queries to.

## SYNTAX

```
Add-VSRoute53ResolverResolverRuleTargetAddress [-Ip] <Object> [[-Port] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53Resolver::ResolverRule.TargetAddress resource property to the template.
In a CreateResolverRule: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html request, an array of the IPs that you want to forward DNS queries to.

## PARAMETERS

### -Ip
One IP address that you want to forward DNS queries to.
You can specify only IPv4 addresses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html#cfn-route53resolver-resolverrule-targetaddress-ip
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

### -Port
The port at Ip that you want to forward DNS queries to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html#cfn-route53resolver-resolverrule-targetaddress-port
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

### Vaporshell.Resource.Route53Resolver.ResolverRule.TargetAddress
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html)

