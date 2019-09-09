# Add-VSCloudFrontDistributionCustomOriginConfig

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.CustomOriginConfig resource property to the template.
A custom origin or an Amazon S3 bucket configured as a website endpoint.

## SYNTAX

```
Add-VSCloudFrontDistributionCustomOriginConfig [[-OriginReadTimeout] <Int32>] [[-HTTPSPort] <Int32>]
 [[-OriginKeepaliveTimeout] <Int32>] [[-OriginSSLProtocols] <Object>] [[-HTTPPort] <Int32>]
 [-OriginProtocolPolicy] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.CustomOriginConfig resource property to the template.
A custom origin or an Amazon S3 bucket configured as a website endpoint.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -OriginReadTimeout
You can create a custom origin read timeout.
All timeout units are in seconds.
The default origin read timeout is 30 seconds, but you can configure custom timeout lengths using the CloudFront API.
The minimum timeout length is 4 seconds; the maximum is 60 seconds.
If you need to increase the maximum time limit, contact the AWS Support Center: https://console.aws.amazon.com/support/home#/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originreadtimeout
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -HTTPSPort
The HTTPS port the custom origin listens on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpsport
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -OriginKeepaliveTimeout
You can create a custom keep-alive timeout.
All timeout units are in seconds.
The default keep-alive timeout is 5 seconds, but you can configure custom timeout lengths using the CloudFront API.
The minimum timeout length is 1 second; the maximum is 60 seconds.
If you need to increase the maximum time limit, contact the AWS Support Center: https://console.aws.amazon.com/support/home#/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originkeepalivetimeout
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -OriginSSLProtocols
The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originsslprotocols
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

### -HTTPPort
The HTTP port the custom origin listens on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-httpport
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -OriginProtocolPolicy
The origin protocol policy to apply to your origin.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html#cfn-cloudfront-distribution-customoriginconfig-originprotocolpolicy
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.CustomOriginConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customoriginconfig.html)

