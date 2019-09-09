# Add-VSCloudFrontStreamingDistributionTrustedSigners

## SYNOPSIS
Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template.
A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.

## SYNTAX

```
Add-VSCloudFrontStreamingDistributionTrustedSigners [-Enabled] <Boolean> [[-AwsAccountNumbers] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::StreamingDistribution.TrustedSigners resource property to the template.
A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.

If you want to require signed URLs in requests for objects in the target origin that match the PathPattern for this cache behavior, specify true for Enabled, and specify the applicable values for Quantity and Items.
For more information, see Serving Private Content through CloudFront: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html in the * Amazon CloudFront Developer Guide*.

If you don't want to require signed URLs in requests for objects that match PathPattern, specify false for Enabled and 0 for Quantity.
Omit Items.

To add, change, or remove one or more trusted signers, change Enabled to true (if it's currently false, change Quantity as applicable, and specify all of the trusted signers that you want to include in the updated distribution.

For more information about updating the distribution configuration, see DistributionConfig: https://docs.aws.amazon.com/cloudfront/latest/APIReference/DistributionConfig.html in the *Amazon CloudFront API Reference*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Enabled
Specifies whether you want to require viewers to use signed URLs to access the files specified by PathPattern and TargetOriginId.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-enabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: False
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

