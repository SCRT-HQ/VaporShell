# Add-VSElasticLoadBalancingV2ListenerRulePathPatternConfig

## SYNOPSIS
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.PathPatternConfig resource property to the template.
Information about a path pattern condition.

## SYNTAX

```
Add-VSElasticLoadBalancingV2ListenerRulePathPatternConfig [[-Values] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticLoadBalancingV2::ListenerRule.PathPatternConfig resource property to the template.
Information about a path pattern condition.

## PARAMETERS

### -Values
One or more path patterns to compare against the request URL.
The maximum size of each string is 128 characters.
The comparison is case sensitive.
The following wildcard characters are supported: * matches 0 or more characters and ?
matches exactly 1 character.
If you specify multiple strings, the condition is satisfied if one of them matches the request URL.
The path pattern is compared only to the path of the URL, not to its query string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html#cfn-elasticloadbalancingv2-listenerrule-pathpatternconfig-values
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

### Vaporshell.Resource.ElasticLoadBalancingV2.ListenerRule.PathPatternConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html)

