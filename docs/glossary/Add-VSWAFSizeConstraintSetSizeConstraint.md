# Add-VSWAFSizeConstraintSetSizeConstraint

## SYNOPSIS
Adds an AWS::WAF::SizeConstraintSet.SizeConstraint resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFSizeConstraintSetSizeConstraint [-ComparisonOperator] <Object> [-FieldToMatch] <Object>
 [-Size] <Object> [-TextTransformation] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAF::SizeConstraintSet.SizeConstraint resource property to the template.
**Note**

This is **AWS WAF Classic** documentation.
For more information, see AWS WAF Classic: https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.
With the latest version, AWS WAF has a single set of endpoints for regional and global use.

Specifies a constraint on the size of a part of the web request.
AWS WAF uses the Size, ComparisonOperator, and FieldToMatch to build an expression in the form of "Size ComparisonOperator size in bytes of FieldToMatch".
If that expression is true, the SizeConstraint is considered to match.

## PARAMETERS

### -ComparisonOperator
The type of comparison you want AWS WAF to perform.
AWS WAF uses this in combination with the provided Size and FieldToMatch to build an expression in the form of "Size ComparisonOperator size in bytes of FieldToMatch".
If that expression is true, the SizeConstraint is considered to match.
**EQ**: Used to test if the Size is equal to the size of the FieldToMatch
**NE**: Used to test if the Size is not equal to the size of the FieldToMatch
**LE**: Used to test if the Size is less than or equal to the size of the FieldToMatch
**LT**: Used to test if the Size is strictly less than the size of the FieldToMatch
**GE**: Used to test if the Size is greater than or equal to the size of the FieldToMatch
**GT**: Used to test if the Size is strictly greater than the size of the FieldToMatch

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-comparisonoperator
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

### -FieldToMatch
Specifies where in a web request to look for the size constraint.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch
Type: FieldToMatch
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

### -Size
The size in bytes that you want AWS WAF to compare against the size of the specified FieldToMatch.
AWS WAF uses this in combination with ComparisonOperator and FieldToMatch to build an expression in the form of "Size ComparisonOperator size in bytes of FieldToMatch".
If that expression is true, the SizeConstraint is considered to match.
Valid values for size are 0 - 21474836480 bytes 0 - 20 GB.
If you specify URI for the value of Type, the / in the URI counts as one character.
For example, the URI /logo.jpg is nine characters long.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-size
PrimitiveType: Integer
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

### -TextTransformation
Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
If you specify a transformation, AWS WAF performs the transformation on FieldToMatch before inspecting it for a match.
You can only specify a single type of TextTransformation.
Note that if you choose BODY for the value of Type, you must choose NONE for TextTransformation because CloudFront forwards only the first 8192 bytes for inspection.
**NONE**
Specify NONE if you don't want to perform any text transformations.
**CMD_LINE**
When you're concerned that attackers are injecting an operating system command line command and using unusual formatting to disguise some or all of the command, use this option to perform the following transformations:
+ Delete the following characters:  " ' ^
+ Delete spaces before the following characters: / 
+ Replace the following characters with a space: , ;
+ Replace multiple spaces with one space
+ Convert uppercase letters A-Z to lowercase a-z
**COMPRESS_WHITE_SPACE**
Use this option to replace the following characters with a space character decimal 32:
+ f, formfeed, decimal 12
+ t, tab, decimal 9
+ n, newline, decimal 10
+ r, carriage return, decimal 13
+ v, vertical tab, decimal 11
+ non-breaking space, decimal 160
COMPRESS_WHITE_SPACE also replaces multiple spaces with one space.
**HTML_ENTITY_DECODE**
Use this option to replace HTML-encoded characters with unencoded characters.
HTML_ENTITY_DECODE performs the following operations:
+ Replaces ampersandquot; with "
+ Replaces ampersandnbsp; with a non-breaking space, decimal 160
+ Replaces ampersandlt; with a "less than" symbol
+ Replaces ampersandgt; with \>
+ Replaces characters that are represented in hexadecimal format, ampersand#xhhhh;, with the corresponding characters
+ Replaces characters that are represented in decimal format, ampersand#nnnn;, with the corresponding characters
**LOWERCASE**
Use this option to convert uppercase letters A-Z to lowercase a-z.
**URL_DECODE**
Use this option to decode a URL-encoded value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html#cfn-waf-sizeconstraintset-sizeconstraint-texttransformation
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.WAF.SizeConstraintSet.SizeConstraint
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sizeconstraintset-sizeconstraint.html)

