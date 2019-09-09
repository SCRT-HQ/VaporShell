# Add-VSS3BucketAbortIncompleteMultipartUpload

## SYNOPSIS
Adds an AWS::S3::Bucket.AbortIncompleteMultipartUpload resource property to the template.
Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload.
For more information, see  Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy: https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config in the *Amazon Simple Storage Service Developer Guide*.

## SYNTAX

```
Add-VSS3BucketAbortIncompleteMultipartUpload [-DaysAfterInitiation] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.AbortIncompleteMultipartUpload resource property to the template.
Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload.
For more information, see  Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy: https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config in the *Amazon Simple Storage Service Developer Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DaysAfterInitiation
Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html#cfn-s3-bucket-abortincompletemultipartupload-daysafterinitiation
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.AbortIncompleteMultipartUpload
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html)

