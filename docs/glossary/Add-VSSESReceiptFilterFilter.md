# Add-VSSESReceiptFilterFilter

## SYNOPSIS
Adds an AWS::SES::ReceiptFilter.Filter resource property to the template.
A data structure that describes the IP address filter that you want to specify.
This structure consists of a name, an IP address range, and whether to allow or block mail from it.

## SYNTAX

```
Add-VSSESReceiptFilterFilter [-IpFilter] <Object> [[-Name] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SES::ReceiptFilter.Filter resource property to the template.
A data structure that describes the IP address filter that you want to specify.
This structure consists of a name, an IP address range, and whether to allow or block mail from it.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -IpFilter
A structure that provides the IP addresses to block or allow, and whether to block or allow incoming mail from them.

Type: IpFilter
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-ipfilter
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

### -Name
The name of the IP address filter.
The name must:
+ Only contain ASCII letters a-z, A-Z, numbers 0-9, underscores _, or dashes -.
+ Start and end with a letter or number.
+ Contain 64 characters or fewer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-name
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

### Vaporshell.Resource.SES.ReceiptFilter.Filter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html)

