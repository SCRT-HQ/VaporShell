# Add-VSWAFv2WebACLFieldToMatch

## SYNOPSIS
Adds an AWS::WAFv2::WebACL.FieldToMatch resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2WebACLFieldToMatch [[-SingleHeader] <Object>] [[-SingleQueryArgument] <Object>]
 [[-AllQueryArguments] <Object>] [[-UriPath] <Object>] [[-QueryString] <Object>] [[-Body] <Object>]
 [[-Method] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::WebACL.FieldToMatch resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

The part of a web request that you want AWS WAF to inspect.
Include the FieldToMatch types that you want to inspect, with additional specifications as needed, according to the type.

## PARAMETERS

### -SingleHeader
Inspect a single header.
Provide the name of the header to inspect, for example, User-Agent or Referer.
This setting isn't case sensitive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singleheader
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

### -SingleQueryArgument
Inspect a single query argument.
Provide the name of the query argument to inspect, such as *UserName* or *SalesRegion*.
The name can be up to 30 characters long and isn't case sensitive.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singlequeryargument
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

### -AllQueryArguments
Inspect all query arguments.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-allqueryarguments
UpdateType: Mutable
PrimitiveType: Json

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

### -UriPath
Inspect the request URI path.
This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-uripath
UpdateType: Mutable
PrimitiveType: Json

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueryString
Inspect the query string.
This is the part of a URL that appears after a ?
character, if any.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-querystring
UpdateType: Mutable
PrimitiveType: Json

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
Inspect the request body, which immediately follows the request headers.
This is the part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form.
Note that only the first 8 KB 8192 bytes of the request body are forwarded to AWS WAF for inspection.
If you don't need to inspect more than 8 KB, you can guarantee that you don't allow additional bytes in by combining a statement that inspects the body of the web request, such as ByteMatchStatement or RegexPatternSetReferenceStatement, with a SizeConstraintStatement that enforces an 8 KB size limit on the body of the request.
AWS WAF doesn't support inspecting the entire contents of web requests whose bodies exceed the 8 KB limit.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-body
UpdateType: Mutable
PrimitiveType: Json

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Method
Inspect the HTTP method.
The method indicates the type of operation that the request is asking the origin to perform.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-method
UpdateType: Mutable
PrimitiveType: Json

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFv2.WebACL.FieldToMatch
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html)

