# Add-VSCloudFrontDistributionLogging

## SYNOPSIS
Adds an AWS::CloudFront::Distribution.Logging resource property to the template.
A complex type that controls whether access logs are written for the distribution.

## SYNTAX

```
Add-VSCloudFrontDistributionLogging [[-IncludeCookies] <Object>] [-Bucket] <Object> [[-Prefix] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudFront::Distribution.Logging resource property to the template.
A complex type that controls whether access logs are written for the distribution.

## PARAMETERS

### -IncludeCookies
Specifies whether you want CloudFront to include cookies in access logs, specify true for IncludeCookies.
If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution.
If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify false for IncludeCookies.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-includecookies
PrimitiveType: Boolean
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

### -Bucket
The Amazon S3 bucket to store the access logs in, for example, myawslogbucket.s3.amazonaws.com.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-bucket
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

### -Prefix
An optional string that you want CloudFront to prefix to the access log filenames for this distribution, for example, myprefix/.
If you want to enable logging, but you don't want to specify a prefix, you still must include an empty Prefix element in the Logging element.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-prefix
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudFront.Distribution.Logging
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html)

