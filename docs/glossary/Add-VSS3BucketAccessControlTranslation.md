# Add-VSS3BucketAccessControlTranslation

## SYNOPSIS
Adds an AWS::S3::Bucket.AccessControlTranslation resource property to the template.
Specify this only in a cross-account scenario (where source and destination bucket owners are not the same, and you want to change replica ownership to the AWS account that owns the destination bucket.
If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object.

## SYNTAX

```
Add-VSS3BucketAccessControlTranslation [-Owner] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.AccessControlTranslation resource property to the template.
Specify this only in a cross-account scenario (where source and destination bucket owners are not the same, and you want to change replica ownership to the AWS account that owns the destination bucket.
If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object.

## PARAMETERS

### -Owner
Specifies the replica ownership.
For default and valid values, see PUT bucket replication: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html in the *Amazon Simple Storage Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html#cfn-s3-bucket-accesscontroltranslation-owner
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

### Vaporshell.Resource.S3.Bucket.AccessControlTranslation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html)

