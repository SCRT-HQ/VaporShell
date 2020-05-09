# Add-VSCloudFrontDistributionForwardedValues

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template.
A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.

## SYNTAX

```
Add-VSCloudFrontDistributionForwardedValues [[-Cookies] <Object>] [[-Headers] <Object>] [-QueryString] <Object>
 [[-QueryStringCacheKeys] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.ForwardedValues resource property to the template.
A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.

## PARAMETERS

### -Cookies
A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones.
For more information about forwarding cookies to the origin, see How CloudFront Forwards, Caches, and Logs Cookies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html in the *Amazon CloudFront Developer Guide*.

Type: Cookies
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies
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

### -Headers
A complex type that specifies the Headers, if any, that you want CloudFront to forward to the origin for this cache behavior whitelisted headers.
For the headers that you specify, CloudFront also caches separate versions of a specified object that is based on the header values in viewer requests.
For more information, see  Caching Content Based on Request Headers: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html in the *Amazon CloudFront Developer Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers
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

### -QueryString
Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters.
CloudFront behavior depends on the value of QueryString and on the values that you specify for QueryStringCacheKeys, if any:
If you specify true for QueryString and you don't specify any values for QueryStringCacheKeys, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters.
Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.
If you specify true for QueryString and you specify one or more values for QueryStringCacheKeys, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.
If you specify false for QueryString, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.
For more information, see Configuring CloudFront to Cache Based on Query String Parameters: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html in the *Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring
PrimitiveType: Boolean
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

### -QueryStringCacheKeys
A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.ForwardedValues
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html)

