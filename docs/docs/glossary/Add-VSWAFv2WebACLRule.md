# Add-VSWAFv2WebACLRule

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.Rule resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLRule [-Name] <Object> [-Priority] <Object> [-Statement] <Object> [[-Action] <Object>]
 [[-OverrideAction] <Object>] [-VisibilityConfig] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.Rule resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A single rule, which you can use in a WebACL or RuleGroup to identify web requests that you want to allow, block, or count.
Each rule includes one top-level Statement that AWS WAF uses to identify matching web requests, and parameters that govern how AWS WAF handles them.

## PARAMETERS

### -Name
A friendly name of the rule.
You can't change the name of a Rule after you create it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-name
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-priority
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-statement
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
This is used only for rules whose statements don't reference a rule group.
Rule statements that reference a rule group are RuleGroupReferenceStatement and ManagedRuleGroupReferenceStatement.
You must set either this Action setting or the rule's OverrideAction, but not both:
+ If the rule statement doesn't reference a rule group, you must set this rule action setting and you must not set the rule's override action setting.
+ If the rule statement references a rule group, you must not set this action setting, because the actions are already set on the rules inside the rule group.
You must set the rule's override action setting to indicate specifically whether to override the actions that are set on the rules in the rule group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-action
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

### -OverrideAction
The override action to apply to the rules in a rule group, instead of the individual rule action settings.
This is used only for rules whose statements reference a rule group.
Rule statements that reference a rule group are RuleGroupReferenceStatement and ManagedRuleGroupReferenceStatement.
Set the override action to none to leave the rule group rule actions in effect.
Set it to count to only count matches, regardless of the rule action settings.
You must set either this OverrideAction setting or the Action setting, but not both:
+ If the rule statement references a rule group, you must set this override action setting and you must not set the rule's action setting.
+ If the rule statement doesn't reference a rule group, you must set the rule action setting and you must not set the rule's override action setting.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-overrideaction
UpdateType: Mutable
Type: OverrideAction

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

### -VisibilityConfig
Defines and enables Amazon CloudWatch metrics and web request sample collection.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-visibilityconfig
UpdateType: Mutable
Type: VisibilityConfig

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.WebACL.Rule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html)

