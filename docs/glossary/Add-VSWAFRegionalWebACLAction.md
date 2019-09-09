# Add-VSWAFRegionalWebACLAction

## SYNOPSIS
Adds an AWS::WAFRegional::WebACL.Action resource property to the template.
Specifies the action AWS WAF takes when a web request matches or doesn't match all rule conditions.

## SYNTAX

```
Add-VSWAFRegionalWebACLAction [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFRegional::WebACL.Action resource property to the template.
Specifies the action AWS WAF takes when a web request matches or doesn't match all rule conditions.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
For actions that are associated with a rule, the action that AWS WAF takes when a web request matches all conditions in a rule.
For the default action of a web access control list ACL, the action that AWS WAF takes when a web request doesn't match all conditions in any rule.
Valid settings include the following:
+  ALLOW: AWS WAF allows requests
+  BLOCK: AWS WAF blocks requests
+  COUNT: AWS WAF increments a counter of the requests that match all of the conditions in the rule.
AWS WAF then continues to inspect the web request based on the remaining rules in the web ACL.
You can't specify COUNT for the default action for a WebACL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html#cfn-wafregional-webacl-action-type
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

### Vaporshell.Resource.WAFRegional.WebACL.Action
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-action.html)

