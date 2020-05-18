# Add-VSWAFv2RuleGroupRegexPatternSetReferenceStatement

## SYNOPSIS
Adds an AWS::WAFv2::RuleGroup.RegexPatternSetReferenceStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2RuleGroupRegexPatternSetReferenceStatement [-Arn] <Object> [-FieldToMatch] <Object>
 [-TextTransformations] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::RuleGroup.RegexPatternSetReferenceStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to search web request components for matches with regular expressions.
To use this, create a RegexPatternSet that specifies the expressions that you want to detect, then use the ARN of that set in this statement.
A web request matches the pattern set rule statement if the request component matches any of the patterns in the set.
To create a regex pattern set, see CreateRegexPatternSet.

Each regex pattern set rule statement references a regex pattern set.
You create and maintain the set independent of your rules.
This allows you to use the single set in multiple rules.
When you update the referenced set, AWS WAF automatically updates all rules that reference it.

## PARAMETERS

### -Arn
The Amazon Resource Name ARN of the RegexPatternSet that this statement references.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-arn
UpdateType: Mutable
PrimitiveType: String

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

### -FieldToMatch
The part of a web request that you want AWS WAF to inspect.
For more information, see FieldToMatch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-fieldtomatch
UpdateType: Mutable
Type: FieldToMatch

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

### -TextTransformations
Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content identified by FieldToMatch, starting from the lowest priority setting, before inspecting the content for a match.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-texttransformations
UpdateType: Mutable
Type: List
ItemType: TextTransformation

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.RuleGroup.RegexPatternSetReferenceStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html)

