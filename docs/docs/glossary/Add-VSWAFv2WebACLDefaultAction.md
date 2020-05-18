# Add-VSWAFv2WebACLDefaultAction

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.DefaultAction resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLDefaultAction [[-Allow] <Object>] [[-Block] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.DefaultAction resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

In a WebACL, this is the action that you want AWS WAF to perform when a web request doesn't match any of the rules in the WebACL.
The default action must be a terminating action, so count is not allowed.

## PARAMETERS

### -Allow
Specifies that AWS WAF should allow requests by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-allow
UpdateType: Mutable
PrimitiveType: Json

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

### -Block
Specifies that AWS WAF should block requests by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html#cfn-wafv2-webacl-defaultaction-block
UpdateType: Mutable
PrimitiveType: Json

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

### Vaporshell.Resource.WAFv2.WebACL.DefaultAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-defaultaction.html)

