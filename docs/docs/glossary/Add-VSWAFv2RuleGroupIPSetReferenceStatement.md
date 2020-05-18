# Add-VSWAFv2RuleGroupIPSetReferenceStatement

## SYNOPSIS
Adds an AWS::WAFv2::RuleGroup.IPSetReferenceStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2RuleGroupIPSetReferenceStatement [-Arn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::RuleGroup.IPSetReferenceStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to detect web requests coming from particular IP addresses or address ranges.
To use this, create an IPSet that specifies the addresses you want to detect, then use the ARN of that set in this statement.
To create an IP set, see CreateIPSet.

Each IP set rule statement references an IP set.
You create and maintain the set independent of your rules.
This allows you to use the single set in multiple rules.
When you update the referenced set, AWS WAF automatically updates all rules that reference it.

## PARAMETERS

### -Arn
The Amazon Resource Name ARN of the IPSet that this statement references.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-arn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.RuleGroup.IPSetReferenceStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html)

