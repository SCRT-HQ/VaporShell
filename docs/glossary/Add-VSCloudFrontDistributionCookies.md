# Add-VSCloudFrontDistributionCookies

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.Cookies resource property to the template.
A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones.
For more information about forwarding cookies to the origin, see How CloudFront Forwards, Caches, and Logs Cookies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html in the *Amazon CloudFront Developer Guide*.

## SYNTAX

```
Add-VSCloudFrontDistributionCookies [[-WhitelistedNames] <Object>] [-Forward] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.Cookies resource property to the template.
A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones.
For more information about forwarding cookies to the origin, see How CloudFront Forwards, Caches, and Logs Cookies: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html in the *Amazon CloudFront Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -WhitelistedNames
Required if you specify whitelist for the value of Forward:.
A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.
If you specify all or none for the value of Forward, omit WhitelistedNames.
If you change the value of Forward from whitelist to all or none and you don't delete the WhitelistedNames element and its child elements, CloudFront deletes them automatically.
For the current limit on the number of cookie names that you can whitelist for each cache behavior, see  CloudFront Limits: https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront in the *AWS General Reference*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-whitelistednames
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

### -Forward
Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the WhitelistedNames complex type.
Amazon S3 doesn't process cookies.
When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the Forward element.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-forward
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.Cookies
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html)

