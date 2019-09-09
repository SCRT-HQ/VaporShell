# Add-VSCloudFrontDistributionS3OriginConfig

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.S3OriginConfig resource property to the template.
A complex type that contains information about the Amazon S3 origin.
If the origin is a custom origin, use the CustomOriginConfig element instead.

## SYNTAX

```
Add-VSCloudFrontDistributionS3OriginConfig [[-OriginAccessIdentity] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.S3OriginConfig resource property to the template.
A complex type that contains information about the Amazon S3 origin.
If the origin is a custom origin, use the CustomOriginConfig element instead.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -OriginAccessIdentity
The CloudFront origin access identity to associate with the origin.
Use an origin access identity to configure the origin so that viewers can *only* access objects in an Amazon S3 bucket through CloudFront.
The format of the value is:
origin-access-identity/cloudfront/*ID-of-origin-access-identity*
where  ID-of-origin-access-identity  is the value that CloudFront returned in the ID element when you created the origin access identity.
If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty OriginAccessIdentity element.
To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty OriginAccessIdentity element.
To replace the origin access identity, update the distribution configuration and specify the new origin access identity.
For more information about the origin access identity, see Serving Private Content through CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html in the *Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html#cfn-cloudfront-distribution-s3originconfig-originaccessidentity
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.S3OriginConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html)

