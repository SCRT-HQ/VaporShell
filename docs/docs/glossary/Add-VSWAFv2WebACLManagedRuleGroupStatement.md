# Add-VSWAFv2WebACLManagedRuleGroupStatement

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.ManagedRuleGroupStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLManagedRuleGroupStatement [-Name] <Object> [-VendorName] <Object> [[-ExcludedRules] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.ManagedRuleGroupStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement used to run the rules that are defined in a managed rule group.
To use this, provide the vendor name and the name of the rule group in this statement.
You can retrieve the required names by calling ListAvailableManagedRuleGroups.

You can't nest a ManagedRuleGroupStatement, for example for use inside a NotStatement or OrStatement.
It can only be referenced as a top-level statement within a rule.

## PARAMETERS

### -Name
The name of the managed rule group.
You use this, along with the vendor name, to identify the rule group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-name
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

### -VendorName
The name of the managed rule group vendor.
You use this, along with the rule group name, to identify the rule group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-vendorname
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

### -ExcludedRules
The rules whose actions are set to COUNT by the web ACL, regardless of the action that is set on the rule.
This effectively excludes the rule from acting on web requests.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-excludedrules
UpdateType: Mutable
Type: List
ItemType: ExcludedRule

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

### Vaporshell.Resource.WAFv2.WebACL.ManagedRuleGroupStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html)

