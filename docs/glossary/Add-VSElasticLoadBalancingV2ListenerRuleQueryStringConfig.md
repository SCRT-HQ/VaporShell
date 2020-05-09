# Add-VSElasticLoadBalancingV2ListenerRuleQueryStringConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringConfig resource property to the template.
Information about a query string condition.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRuleQueryStringConfig [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringConfig resource property to the template.
Information about a query string condition.

The query string component of a URI starts after the first '?' character and is terminated by either a '#' character or the end of the URI.
A typical query string contains key/value pairs separated by '&' characters.
The allowed characters are specified by RFC 3986.
Any character can be percentage encoded.

## PARAMETERS

### -Values
One or more key/value pairs or values to find in the query string.
The maximum size of each string is 128 characters.
The comparison is case insensitive.
The following wildcard characters are supported: * matches 0 or more characters and ?
matches exactly 1 character.
To search for a literal '*' or '?' character in a query string, you must escape these characters in Values using a '' character.
If you specify multiple key/value pairs or values, the condition is satisfied if one of them is found in the query string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html#cfn-elasticloadbalancingv2-listenerrule-querystringconfig-values
DuplicatesAllowed: False
ItemType: QueryStringKeyValue
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

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.QueryStringConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html)

