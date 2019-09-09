# Add-VSSESReceiptFilterIpFilter

## SYNOPSIS
Adds an AWS::SES::ReceiptFilter.IpFilter resource property to the template.
Receipt IP address filters enable you to specifically accept or reject incoming email that originates from an IP address or range of IP addresses.

## SYNTAX

```
Add-VSSESReceiptFilterIpFilter [-Policy] <Object> [-Cidr] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptFilter.IpFilter resource property to the template.
Receipt IP address filters enable you to specifically accept or reject incoming email that originates from an IP address or range of IP addresses.

For information about setting up IP address filters, see the Amazon SES Developer Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Policy
Indicates whether to block or allow incoming mail from the specified IP addresses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-policy
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

### -Cidr
An IP address or a range of IP addresses that you want to block or allow, specified in Classless Inter-Domain Routing CIDR notation.
An example of a single email address is 10.0.0.1.
An example of a range of IP addresses is 10.0.0.1/24.
For more information about CIDR notation, see RFC 2317: https://tools.ietf.org/html/rfc2317.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-cidr
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

### Vaporshell.Resource.SES.ReceiptFilter.IpFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html)

