# Add-VSWAFv2RuleGroupRule

## SYNOPSIS
Adds an AWS::WAFv2::RuleGroup.Rule resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2RuleGroupRule [-Name] <Object> [-Priority] <Object> [-Statement] <Object> [[-Action] <Object>]
 [-VisibilityConfig] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::RuleGroup.Rule resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A single rule, which you can use in a WebACL or RuleGroup to identify web requests that you want to allow, block, or count.
Each rule includes one top-level Statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them.

## PARAMETERS

### -Name
A friendly name of the rule.
You can't change the name of a Rule after you create it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-name
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

### -Priority
If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the Rules in order based on the value of Priority.
AWS WAF processes rules with lower priority first.
The priorities don't need to be consecutive, but they must all be different.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-priority
UpdateType: Mutable
PrimitiveType: Integer

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

### -Statement
The AWS WAF processing statement for the rule, for example ByteMatchStatement or SizeConstraintStatement.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-statement
UpdateType: Mutable
Type: StatementOne

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

### -Action
The action that AWS WAF should take on a web request when it matches the rule's statement.
Settings at the web ACL level can override the rule action setting.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-action
UpdateType: Mutable
Type: RuleAction

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

### -VisibilityConfig
Defines and enables Amazon CloudWatch metrics and web request sample collection.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-visibilityconfig
UpdateType: Mutable
Type: VisibilityConfig

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.RuleGroup.Rule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html)

