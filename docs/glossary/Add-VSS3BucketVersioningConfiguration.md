# Add-VSS3BucketVersioningConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.VersioningConfiguration resource property to the template.
Describes the versioning state of an Amazon S3 bucket.
For more information, see PUT Bucket versioning: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html in the *Amazon Simple Storage Service API Reference*.

## SYNTAX

```
Add-VSS3BucketVersioningConfiguration [-Status] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.VersioningConfiguration resource property to the template.
Describes the versioning state of an Amazon S3 bucket.
For more information, see PUT Bucket versioning: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html in the *Amazon Simple Storage Service API Reference*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Status
The versioning state of the bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html#cfn-s3-bucket-versioningconfig-status
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.VersioningConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html)

