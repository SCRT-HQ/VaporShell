# Add-VSWAFv2WebACLSizeConstraintStatement

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.SizeConstraintStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLSizeConstraintStatement [-FieldToMatch] <Object> [-ComparisonOperator] <Object>
 [-Size] <Object> [-TextTransformations] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.SizeConstraintStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

A rule statement that compares a number of bytes against the size of a request component, using a comparison operator, such as greater than (\> or less than (\<.
For example, you can use a size constraint statement to look for query strings that are longer than 100 bytes.

If you configure AWS WAF to inspect the request body, AWS WAF inspects only the first 8192 bytes (8 KB.
If the request body for your web requests never exceeds 8192 bytes, you can create a size constraint condition and block requests that have a request body greater than 8192 bytes.

If you choose URI for the value of Part of the request to filter on, the slash (/ in the URI counts as one character.
For example, the URI /logo.jpg is nine characters long.

## PARAMETERS

### -FieldToMatch
The part of a web request that you want AWS WAF to inspect.
For more information, see FieldToMatch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-fieldtomatch
UpdateType: Mutable
Type: FieldToMatch

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

### -ComparisonOperator
The operator to use to compare the request part to the size setting.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-comparisonoperator
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

### -Size
The size, in byte, to compare to the request part, after any transformations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-size
UpdateType: Mutable
PrimitiveType: Integer

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

### -TextTransformations
Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content identified by FieldToMatch, starting from the lowest priority setting, before inspecting the content for a match.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-texttransformations
UpdateType: Mutable
Type: List
ItemType: TextTransformation

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.WebACL.SizeConstraintStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html)

