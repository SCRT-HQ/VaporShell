# Add-VSWAFv2WebACLStatementThree

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.StatementThree resource property to the template.
Rules statement.

## SYNTAX

```
Add-VSWAFv2WebACLStatementThree [[-ByteMatchStatement] <Object>] [[-SqliMatchStatement] <Object>]
 [[-XssMatchStatement] <Object>] [[-SizeConstraintStatement] <Object>] [[-GeoMatchStatement] <Object>]
 [[-RuleGroupReferenceStatement] <Object>] [[-IPSetReferenceStatement] <Object>]
 [[-RegexPatternSetReferenceStatement] <Object>] [[-ManagedRuleGroupStatement] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.StatementThree resource property to the template.
Rules statement.

## PARAMETERS

### -ByteMatchStatement
A rule statement that defines a string match search for AWS WAF to apply to web requests.
The byte match statement provides the bytes to search for, the location in requests that you want AWS WAF to search, and other settings.
The bytes to search for are typically a string that corresponds with ASCII characters.
In the AWS WAF console and the developer guide, this is refered to as a string match statement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-bytematchstatement
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-sqlimatchstatement
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-xssmatchstatement
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-sizeconstraintstatement
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-geomatchstatement
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

### -RuleGroupReferenceStatement
A rule statement used to run the rules that are defined in a RuleGroup.
To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.
You can't nest this type of statement within another.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-rulegroupreferencestatement
UpdateType: Mutable
Type: RuleGroupReferenceStatement

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

### -IPSetReferenceStatement
Statement that references a set of IP addresses to compare to incoming requests.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-ipsetreferencestatement
UpdateType: Mutable
Type: IPSetReferenceStatement

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

### -RegexPatternSetReferenceStatement
A rule statement used to search web request components for matches with regular expressions.
To use this, create a RegexPatternSet with the expressions that you want to detect, then use that set in this statement.
A web request matches the pattern set rule statement if the request component matches any of the patterns in the set.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-regexpatternsetreferencestatement
UpdateType: Mutable
Type: RegexPatternSetReferenceStatement

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

### -ManagedRuleGroupStatement
Statement that references a managed rule group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-managedrulegroupstatement
UpdateType: Mutable
Type: ManagedRuleGroupStatement

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.WebACL.StatementThree
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html)

