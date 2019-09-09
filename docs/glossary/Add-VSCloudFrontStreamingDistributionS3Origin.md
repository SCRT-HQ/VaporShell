# Add-VSCloudFrontStreamingDistributionS3Origin

## SYNOPSIS
Adds an AWS::CloudFront::StreamingDistribution.S3Origin resource property to the template.
A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.

## SYNTAX

```
Add-VSCloudFrontStreamingDistributionS3Origin [-DomainName] <Object> [-OriginAccessIdentity] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::StreamingDistribution.S3Origin resource property to the template.
A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DomainName
The DNS name of the Amazon S3 origin.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html#cfn-cloudfront-streamingdistribution-s3origin-domainname
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

### -OriginAccessIdentity
The CloudFront origin access identity to associate with the distribution.
Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.
If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty OriginAccessIdentity element.
To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty OriginAccessIdentity element.
To replace the origin access identity, update the distribution configuration and specify the new origin access identity.
For more information, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html in the * Amazon CloudFront Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html#cfn-cloudfront-streamingdistribution-s3origin-originaccessidentity
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

### Vaporshell.Resource.CloudFront.StreamingDistribution.S3Origin
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-s3origin.html)

