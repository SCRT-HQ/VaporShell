# Add-VSWAFv2WebACLRateBasedStatementTwo

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.RateBasedStatementTwo resource property to the template.
Rules statement.

## SYNTAX

```
Add-VSWAFv2WebACLRateBasedStatementTwo [-Limit] <Object> [-AggregateKeyType] <Object>
 [[-ScopeDownStatement] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.RateBasedStatementTwo resource property to the template.
Rules statement.

## PARAMETERS

### -Limit
Limit on the web request that match any nested statement criteria in any 5 minute period.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-limit
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-aggregatekeytype
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-scopedownstatement
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

### Vaporshell.Resource.WAFv2.WebACL.RateBasedStatementTwo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html)

