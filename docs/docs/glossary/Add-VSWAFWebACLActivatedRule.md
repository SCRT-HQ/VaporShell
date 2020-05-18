# Add-VSWAFWebACLActivatedRule

## SYNOPSIS
Adds an AWS::WAF::WebACL.ActivatedRule resource property to the template.
The ActivatedRule object in an UpdateWebACL request specifies a Rule that you want to insert or delete, the priority of the Rule in the WebACL, and the action that you want AWS WAF to take when a web request matches the Rule (ALLOW, BLOCK, or COUNT.

## SYNTAX

```
Add-VSWAFWebACLActivatedRule [[-Action] <Object>] [-Priority] <Object> [-RuleId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAF::WebACL.ActivatedRule resource property to the template.
The ActivatedRule object in an UpdateWebACL request specifies a Rule that you want to insert or delete, the priority of the Rule in the WebACL, and the action that you want AWS WAF to take when a web request matches the Rule (ALLOW, BLOCK, or COUNT.

To specify whether to insert or delete a Rule, use the Action parameter in the WebACLUpdate data type.

## PARAMETERS

### -Action
Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the Rule.
Valid values for Action include the following:
+  ALLOW: CloudFront responds with the requested object.
+  BLOCK: CloudFront responds with an HTTP 403 Forbidden status code.
+  COUNT: AWS WAF increments a counter of requests that match the conditions in the rule and then continues to inspect the web request based on the remaining rules in the web ACL.
ActivatedRule|OverrideAction applies only when updating or adding a RuleGroup to a WebACL.
In this case, you do not use ActivatedRule|Action.
For all other update requests, ActivatedRule|Action is used instead of ActivatedRule|OverrideAction.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-action
Type: WafAction
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

### -Priority
Specifies the order in which the Rules in a WebACL are evaluated.
Rules with a lower value for Priority are evaluated before Rules with a higher value.
The value must be a unique integer.
If you add multiple Rules to a WebACL, the values don't need to be consecutive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-priority
PrimitiveType: Integer
UpdateType: Mutable

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

### -RuleId
The RuleId for a Rule.
You use RuleId to get more information about a Rule, update a Rule, insert a Rule into a WebACL or delete a one from a WebACL, or delete a Rule from AWS WAF.
RuleId is returned by CreateRule and by ListRules.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-ruleid
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.WAF.WebACL.ActivatedRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html)

