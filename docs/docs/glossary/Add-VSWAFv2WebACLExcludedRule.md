# Add-VSWAFv2WebACLExcludedRule

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.ExcludedRule resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLExcludedRule [-Name] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.ExcludedRule resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

Specifies a single rule to exclude from the rule group.
Excluding a rule overrides its action setting for the rule group in the web ACL, setting it to COUNT.
This effectively excludes the rule from acting on web requests.

## PARAMETERS

### -Name
The name of the rule to exclude.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html#cfn-wafv2-webacl-excludedrule-name
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

### Vaporshell.Resource.WAFv2.WebACL.ExcludedRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html)

