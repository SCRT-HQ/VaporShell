# Add-VSWAFWebACLWafAction

## SYNOPSIS
Adds an AWS::WAF::WebACL.WafAction resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFWebACLWafAction [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAF::WebACL.WafAction resource property to the template.
**Note**

This is **AWS WAF Classic** documentation.
For more information, see AWS WAF Classic: https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
With the latest version, AWS WAF has a single set of endpoints for regional and global use.

For the action that is associated with a rule in a WebACL, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule.
For the default action in a WebACL, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a WebACL.

## PARAMETERS

### -Type
Specifies how you want AWS WAF to respond to requests that match the settings in a Rule.
Valid settings include the following:
+  ALLOW: AWS WAF allows requests
+  BLOCK: AWS WAF blocks requests
+  COUNT: AWS WAF increments a counter of the requests that match all of the conditions in the rule.
AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL.
You can't specify COUNT for the default action for a WebACL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html#cfn-waf-webacl-action-type
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.WAF.WebACL.WafAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html)

