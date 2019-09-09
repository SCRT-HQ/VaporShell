# Add-VSWAFRegionalWebACLRule

## SYNOPSIS
Adds an AWS::WAFRegional::WebACL.Rule resource property to the template.
A combination of ByteMatchSet, IPSet, and/or SqlInjectionMatchSet objects that identify the web requests that you want to allow, block, or count.
For example, you might create a Rule that includes the following predicates:

## SYNTAX

```
Add-VSWAFRegionalWebACLRule [-Action] <Object> [-Priority] <Int32> [-RuleId] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFRegional::WebACL.Rule resource property to the template.
A combination of ByteMatchSet, IPSet, and/or SqlInjectionMatchSet objects that identify the web requests that you want to allow, block, or count.
For example, you might create a Rule that includes the following predicates:

+ An IPSet that causes AWS WAF to search for web requests that originate from the IP address 192.0.2.44

+ A ByteMatchSet that causes AWS WAF to search for web requests for which the value of the User-Agent header is BadBot.

To match the settings in this Rule, a request must originate from 192.0.2.44 AND include a User-Agent header for which the value is BadBot.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Action
The action that AWS WAF takes when a web request matches all conditions in the rule, such as allow, block, or count the request.

Type: Action
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-action
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

### -Priority
The order in which AWS WAF evaluates the rules in a web ACL.
AWS WAF evaluates rules with a lower value before rules with a higher value.
The value must be a unique integer.
If you have multiple rules in a web ACL, the priority numbers do not need to be consecutive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-priority
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleId
The ID of an AWS WAF Regional rule to associate with a web ACL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-ruleid
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

### Vaporshell.Resource.WAFRegional.WebACL.Rule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html)

