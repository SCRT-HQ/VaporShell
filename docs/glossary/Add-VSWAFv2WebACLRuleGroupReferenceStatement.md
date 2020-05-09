# Add-VSWAFv2WebACLRuleGroupReferenceStatement

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.RuleGroupReferenceStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLRuleGroupReferenceStatement [-Arn] <Object> [[-ExcludedRules] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.RuleGroupReferenceStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to run the rules that are defined in a RuleGroup.
To use this, create a rule group with your rules, then provide the ARN of the rule group in this statement.

You cannot nest a RuleGroupReferenceStatement, for example for use inside a NotStatement or OrStatement.
It can only be referenced as a top-level statement within a rule.

## PARAMETERS

### -Arn
The Amazon Resource Name ARN of the entity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn
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

### -ExcludedRules
The names of rules that are in the referenced rule group, but that you want AWS WAF to exclude from processing for this rule statement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules
UpdateType: Mutable
Type: List
ItemType: ExcludedRule

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

### Vaporshell.Resource.WAFv2.WebACL.RuleGroupReferenceStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html)

