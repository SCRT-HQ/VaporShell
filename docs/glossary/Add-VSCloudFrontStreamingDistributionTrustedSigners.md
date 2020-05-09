# Add-VSCloudFrontStreamingDistributionTrustedSigners

## SYNOPSIS
Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template.
Specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.

## SYNTAX

```
Add-VSCloudFrontStreamingDistributionTrustedSigners [-Enabled] <Object> [[-AwsAccountNumbers] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template.
Specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.

If you want to require signed URLs in requests for objects in the target origin, specify true for Enabled, and specify a list of AWS account IDs.
For more information, see Serving Private Content through CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html in the * Amazon CloudFront Developer Guide*.

If you don't want to require signed URLs in requests for objects, specify false for Enabled and omit the list of AWS account IDs.

## PARAMETERS

### -Enabled
Specifies whether you want to require viewers to use signed URLs to access the files specified by PathPattern and TargetOriginId.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-enabled
PrimitiveType: Boolean
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

### -AwsAccountNumbers
An AWS account that is included in the TrustedSigners complex type for this distribution.
Valid values include:
+  self, which is the AWS account used to create the distribution.
+ An AWS account number.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-awsaccountnumbers
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.StreamingDistribution.TrustedSigners
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html)

