# Add-VSElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.HttpRequestMethodConfig resource property to the template.
Information about an HTTP method condition.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.HttpRequestMethodConfig resource property to the template.
Information about an HTTP method condition.

HTTP defines a set of request methods, also referred to as HTTP verbs.
For more information, see the HTTP Method Registry: https://www.iana.org/assignments/http-methods/http-methods.xhtml.
You can also define custom HTTP methods.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Values
The name of the request method.
The maximum size is 40 characters.
The allowed characters are A-Z, hyphen -, and underscore _.
The comparison is case sensitive.
Wildcards are not supported; therefore, the method name must be an exact match.
If you specify multiple strings, the condition is satisfied if one of the strings matches the HTTP request method.
We recommend that you route GET and HEAD requests in the same way, because the response to a HEAD request may be cached.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html#cfn-elasticloadbalancingv2-listenerrule-httprequestmethodconfig-values
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

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.HttpRequestMethodConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html)

