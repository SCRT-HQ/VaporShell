# Add-VSS3BucketCorsConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.CorsConfiguration resource property to the template.
Describes the cross-origin access configuration for objects in an Amazon S3 bucket.
For more information, see Enabling Cross-Origin Resource Sharing: https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html in the *Amazon Simple Storage Service Developer Guide*.

## SYNTAX

```
Add-VSS3BucketCorsConfiguration [-CorsRules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.CorsConfiguration resource property to the template.
Describes the cross-origin access configuration for objects in an Amazon S3 bucket.
For more information, see Enabling Cross-Origin Resource Sharing: https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html in the *Amazon Simple Storage Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CorsRules
A set of allowed origins and methods.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html#cfn-s3-bucket-cors-corsrule
DuplicatesAllowed: False
ItemType: CorsRule
Type: List
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.CorsConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html)

