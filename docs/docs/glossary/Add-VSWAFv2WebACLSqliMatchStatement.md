# Add-VSWAFv2WebACLSqliMatchStatement

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.SqliMatchStatement resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLSqliMatchStatement [-FieldToMatch] <Object> [-TextTransformations] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.SqliMatchStatement resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

Attackers sometimes insert malicious SQL code into web requests in an effort to extract data from your database.
To allow or block web requests that appear to contain malicious SQL code, create one or more SQL injection match conditions.
An SQL injection match condition identifies the part of web requests, such as the URI or the query string, that you want AWS WAF to inspect.
Later in the process, when you create a web ACL, you specify whether to allow or block requests that appear to contain malicious SQL code.

## PARAMETERS

### -FieldToMatch
The part of a web request that you want AWS WAF to inspect.
For more information, see FieldToMatch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-fieldtomatch
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

### -TextTransformations
Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection.
If you specify one or more transformations in a rule statement, AWS WAF performs all transformations on the content identified by FieldToMatch, starting from the lowest priority setting, before inspecting the content for a match.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-texttransformations
UpdateType: Mutable
Type: List
ItemType: TextTransformation

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.WebACL.SqliMatchStatement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html)

