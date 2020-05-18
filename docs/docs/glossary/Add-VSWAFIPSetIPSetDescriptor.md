# Add-VSWAFIPSetIPSetDescriptor

## SYNOPSIS
Adds an AWS::WAF::IPSet.IPSetDescriptor resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFIPSetIPSetDescriptor [-Type] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAF::IPSet.IPSetDescriptor resource property to the template.
**Note**

This is **AWS WAF Classic** documentation.
For more information, see AWS WAF Classic: https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
With the latest version, AWS WAF has a single set of endpoints for regional and global use.

Specifies the IP address type (IPV4 or IPV6 and the IP address range (in CIDR format that web requests originate from.

## PARAMETERS

### -Type
Specify IPV4 or IPV6.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-type
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

### -Value
Specify an IPv4 address by using CIDR notation.
For example:
+ To configure AWS WAF to allow, block, or count requests that originated from the IP address 192.0.2.44, specify 192.0.2.44/32.
+ To configure AWS WAF to allow, block, or count requests that originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify 192.0.2.0/24.
For more information about CIDR notation, see the Wikipedia entry Classless Inter-Domain Routing: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing.
Specify an IPv6 address by using CIDR notation.
For example:
+ To configure AWS WAF to allow, block, or count requests that originated from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify 1111:0000:0000:0000:0000:0000:0000:0111/128.
+ To configure AWS WAF to allow, block, or count requests that originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify 1111:0000:0000:0000:0000:0000:0000:0000/64.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-value
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

### Vaporshell.Resource.WAF.IPSet.IPSetDescriptor
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html)

