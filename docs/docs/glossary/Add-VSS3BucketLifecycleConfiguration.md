# Add-VSS3BucketLifecycleConfiguration

## SYNOPSIS
Adds an AWS::S3::Bucket.LifecycleConfiguration resource property to the template.
Specifies the lifecycle configuration for objects in an Amazon S3 bucket.
For more information, see Object Lifecycle Management: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html in the *Amazon Simple Storage Service Developer Guide*.

## SYNTAX

```
Add-VSS3BucketLifecycleConfiguration [-Rules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.LifecycleConfiguration resource property to the template.
Specifies the lifecycle configuration for objects in an Amazon S3 bucket.
For more information, see Object Lifecycle Management: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html in the *Amazon Simple Storage Service Developer Guide*.

## PARAMETERS

### -Rules
A lifecycle rule for individual objects in an Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html#cfn-s3-bucket-lifecycleconfig-rules
DuplicatesAllowed: False
ItemType: Rule
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

### Vaporshell.Resource.S3.Bucket.LifecycleConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html)

