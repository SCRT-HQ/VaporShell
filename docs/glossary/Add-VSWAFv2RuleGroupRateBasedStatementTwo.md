# Add-VSWAFv2RuleGroupRateBasedStatementTwo

## SYNOPSIS
Adds an AWS::WAFv2::RuleGroup.RateBasedStatementTwo resource property to the template.
A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span.
You can use this to put a temporary block on requests from an IP address that's sending excessive requests.

## SYNTAX

```
Add-VSWAFv2RuleGroupRateBasedStatementTwo [-Limit] <Object> [-AggregateKeyType] <Object>
 [[-ScopeDownStatement] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::RuleGroup.RateBasedStatementTwo resource property to the template.
A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span.
You can use this to put a temporary block on requests from an IP address that's sending excessive requests.

When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.

You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement.
You can't nest a RateBasedStatement, for example for use inside a NotStatement or OrStatement.
It can only be referenced as a top-level statement within a rule.

## PARAMETERS

### -Limit
Limit on the web request that match any nested statement criteria in any 5 minute period.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-limit
UpdateType: Mutable
PrimitiveType: Integer

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

### -AggregateKeyType
Setting that indicates how to aggregate the request counts.
Currently, you must set this to IP.
The request counts are aggregated on IP addresses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-aggregatekeytype
UpdateType: Mutable
PrimitiveType: String

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

### -ScopeDownStatement
Statement nested inside a rate-based statement to narrow the scope of the requests that AWS WAF counts.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-scopedownstatement
UpdateType: Mutable
Type: StatementThree

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

### Vaporshell.Resource.WAFv2.RuleGroup.RateBasedStatementTwo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html)

