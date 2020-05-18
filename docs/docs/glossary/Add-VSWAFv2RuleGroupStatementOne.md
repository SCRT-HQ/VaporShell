# Add-VSWAFv2RuleGroupStatementOne

## SYNOPSIS
Adds an AWS::WAFv2::RuleGroup.StatementOne resource property to the template.
Rules statement.

## SYNTAX

```
Add-VSWAFv2RuleGroupStatementOne [[-ByteMatchStatement] <Object>] [[-SqliMatchStatement] <Object>]
 [[-XssMatchStatement] <Object>] [[-SizeConstraintStatement] <Object>] [[-GeoMatchStatement] <Object>]
 [[-IPSetReferenceStatement] <Object>] [[-RegexPatternSetReferenceStatement] <Object>]
 [[-RateBasedStatement] <Object>] [[-AndStatement] <Object>] [[-OrStatement] <Object>]
 [[-NotStatement] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::RuleGroup.StatementOne resource property to the template.
Rules statement.

## PARAMETERS

### -ByteMatchStatement
A rule statement that defines a string match search for AWS WAF to apply to web requests.
The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings.
The bytes to search for are typically a string that corresponds with ASCII characters.
In the AWS WAF console and the developer guide, this is refered to as a string match statement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-bytematchstatement
UpdateType: Mutable
Type: ByteMatchStatement

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

### -SqliMatchStatement
Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database.
To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions.
An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect.
Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sqlimatchstatement
UpdateType: Mutable
Type: SqliMatchStatement

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

### -XssMatchStatement
A rule statement that defines a cross-site scripting XSS match search for AWS WAF to apply to web requests.
XSS attacks are those where the attacker uses vulnerabilities in a benign website as a vehicle to inject malicious client-site scripts into other legitimate web browsers.
The XSS match statement provides the location in requests that you want AWS WAF to search and text transformations to use on the search area before AWS WAF searches for character sequences that are likely to be malicious strings.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-xssmatchstatement
UpdateType: Mutable
Type: XssMatchStatement

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

### -SizeConstraintStatement
A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than or less than.
For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes.
If you configure AWS WAF to inspect the request body, AWS WAF inspects only the first 8192 bytes 8 KB.
If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.
If you choose URI for the value of Part of the request to filter on, the slash / in the URI counts as one character.
For example, the URI /logo.jpg is nine characters long.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sizeconstraintstatement
UpdateType: Mutable
Type: SizeConstraintStatement

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GeoMatchStatement
Statement used to identify web requests based on country of origin.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-geomatchstatement
UpdateType: Mutable
Type: GeoMatchStatement

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPSetReferenceStatement
Statement that references a set of IP addresses to compare to incoming requests.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ipsetreferencestatement
UpdateType: Mutable
Type: IPSetReferenceStatement

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RegexPatternSetReferenceStatement
A rule statement used to search web request components for matches with regular expressions.
To use this, create a RegexPatternSet with the expressions that you want to detect, then use that set in this statement.
A web request matches the pattern set rule statement if the request component matches any of the patterns in the set.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-regexpatternsetreferencestatement
UpdateType: Mutable
Type: RegexPatternSetReferenceStatement

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RateBasedStatement
A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span.
You can use this to put a temporary block on requests from an IP address that's sending excessive requests.
When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.
You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement.
You can't nest a RateBasedStatement, for example for use inside a NotStatement or OrStatement.
It can only be referenced as a top-level statement within a rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ratebasedstatement
UpdateType: Mutable
Type: RateBasedStatementOne

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AndStatement
Logical AND statement used in statement nesting.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-andstatement
UpdateType: Mutable
Type: AndStatementOne

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrStatement
Logical OR statement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-orstatement
UpdateType: Mutable
Type: OrStatementOne

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotStatement
Logical NOT statement used to negate the match results of a nested statement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-notstatement
UpdateType: Mutable
Type: NotStatementOne

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.RuleGroup.StatementOne
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html)

