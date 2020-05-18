# Add-VSCloudFrontDistributionOriginCustomHeader

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.OriginCustomHeader resource property to the template.
A complex type that contains HeaderName and HeaderValue elements, if any, for this distribution.

## SYNTAX

```
Add-VSCloudFrontDistributionOriginCustomHeader [-HeaderValue] <Object> [-HeaderName] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.OriginCustomHeader resource property to the template.
A complex type that contains HeaderName and HeaderValue elements, if any, for this distribution.

## PARAMETERS

### -HeaderValue
The value for the header that you specified in the HeaderName field.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headervalue
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

### -HeaderName
The name of a header that you want CloudFront to forward to your origin.
For more information, see Forwarding Custom Headers to Your Origin Web Distributions Only: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html in the * Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headername
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

### Vaporshell.Resource.CloudFront.Distribution.OriginCustomHeader
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html)

