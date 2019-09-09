# Add-VSWAFRegionalByteMatchSetByteMatchTuple

## SYNOPSIS
Adds an AWS::WAFRegional::ByteMatchSet.ByteMatchTuple resource property to the template.
The bytes (typically a string that corresponds with ASCII characters that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.

## SYNTAX

```
Add-VSWAFRegionalByteMatchSetByteMatchTuple [[-TargetString] <Object>] [[-TargetStringBase64] <Object>]
 [-PositionalConstraint] <Object> [-TextTransformation] <Object> [-FieldToMatch] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFRegional::ByteMatchSet.ByteMatchTuple resource property to the template.
The bytes (typically a string that corresponds with ASCII characters that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -TargetString
The value that you want AWS WAF to search for.
AWS WAF searches for the specified string in the part of web requests that you specified in FieldToMatch.
The maximum length of the value is 50 bytes.
You must specify this property or the TargetStringBase64 property.
Valid values depend on the values that you specified for FieldToMatch:
+  HEADER: The value that you want AWS WAF to search for in the request header that you specified in FieldToMatch, for example, the value of the User-Agent or Referer header.
+  METHOD: The HTTP method, which indicates the type of operation specified in the request.
CloudFront supports the following methods: DELETE, GET, HEAD, OPTIONS, PATCH, POST, and PUT.
+  QUERY_STRING: The value that you want AWS WAF to search for in the query string, which is the part of a URL that appears after a ?
character.
+  URI: The value that you want AWS WAF to search for in the part of a URL that identifies a resource, for example, /images/daily-ad.jpg.
+  BODY: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form.
The request body immediately follows the request headers.
Note that only the first 8192 bytes of the request body are forwarded to AWS WAF for inspection.
To allow or block requests based on the length of the body, you can create a size constraint set.
+  SINGLE_QUERY_ARG: The parameter in the query string that you will inspect, such as *UserName* or *SalesRegion*.
The maximum length for SINGLE_QUERY_ARG is 30 characters.
+  ALL_QUERY_ARGS: Similar to SINGLE_QUERY_ARG, but instead of inspecting a single parameter, AWS WAF inspects all parameters within the query string for the value or regex pattern that you specify in TargetString.
If TargetString includes alphabetic characters A-Z and a-z, note that the value is case sensitive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstring
PrimitiveType: String
UpdateType: Mutable

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

### -TargetStringBase64
The base64-encoded value that AWS WAF searches for.
AWS CloudFormation sends this value to AWS WAF without encoding it.
You must specify this property or the TargetString property.
AWS WAF searches for this value in a specific part of web requests, which you define in the FieldToMatch property.
Valid values depend on the Type value in the FieldToMatch property.
For example, for a METHOD type, you must specify HTTP methods such as DELETE, GET, HEAD, OPTIONS, PATCH, POST, and PUT.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-targetstringbase64
PrimitiveType: String
UpdateType: Mutable

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

### -PositionalConstraint
Within the portion of a web request that you want to search for example, in the query string, if any, specify where you want AWS WAF to search.
Valid values include the following:
**CONTAINS**
The specified part of the web request must include the value of TargetString, but the location doesn't matter.
**CONTAINS_WORD**
The specified part of the web request must include the value of TargetString, and TargetString must contain only alphanumeric characters or underscore A-Z, a-z, 0-9, or _.
In addition, TargetString must be a word, which means one of the following:
+  TargetString exactly matches the value of the specified part of the web request, such as the value of a header.
+  TargetString is at the beginning of the specified part of the web request and is followed by a character other than an alphanumeric character or underscore _, for example, BadBot;.
+  TargetString is at the end of the specified part of the web request and is preceded by a character other than an alphanumeric character or underscore _, for example, ;BadBot.
+  TargetString is in the middle of the specified part of the web request and is preceded and followed by characters other than alphanumeric characters or underscore _, for example, -BadBot;.
**EXACTLY**
The value of the specified part of the web request must exactly match the value of TargetString.
**STARTS_WITH**
The value of TargetString must appear at the beginning of the specified part of the web request.
**ENDS_WITH**
The value of TargetString must appear at the end of the specified part of the web request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-positionalconstraint
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

### -TextTransformation
Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass AWS WAF.
If you specify a transformation, AWS WAF performs the transformation on TargetString before inspecting a request for a match.
You can only specify a single type of TextTransformation.
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
**NONE**
Specify NONE if you don't want to perform any text transformations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-texttransformation
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

### -FieldToMatch
The part of a web request that you want AWS WAF to search, such as a specified header or a query string.

Type: FieldToMatch
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html#cfn-wafregional-bytematchset-bytematchtuple-fieldtomatch
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFRegional.ByteMatchSet.ByteMatchTuple
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-bytematchset-bytematchtuple.html)

