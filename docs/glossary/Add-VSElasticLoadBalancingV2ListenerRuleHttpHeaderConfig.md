# Add-VSElasticLoadBalancingV2ListenerRuleHttpHeaderConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.HttpHeaderConfig resource property to the template.
Information about an HTTP header condition.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleHttpHeaderConfig [[-HttpHeaderName] <Object>] [[-Values] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.HttpHeaderConfig resource property to the template.
Information about an HTTP header condition.

There is a set of standard HTTP header fields.
You can also define custom HTTP header fields.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -HttpHeaderName
The name of the HTTP header field.
The maximum size is 40 characters.
The header name is case insensitive.
The allowed characters are specified by RFC 7230.
Wildcards are not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-httpheadername
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

### -Values
One or more strings to compare against the value of the HTTP header.
The maximum size of each string is 128 characters.
The comparison strings are case insensitive.
The following wildcard characters are supported: * matches 0 or more characters and ?
matches exactly 1 character.
If the same header appears multiple times in the request, we search them in order until a match is found.
If you specify multiple strings, the condition is satisfied if one of the strings matches the value of the HTTP header.
To require that all of the strings are a match, create one condition per string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-values
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.HttpHeaderConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html)

