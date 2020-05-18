# Add-VSS3BucketNoncurrentVersionTransition

## SYNOPSIS
Adds an AWS::S3::Bucket.NoncurrentVersionTransition resource property to the template.
Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE storage class.
If your bucket is versioning-enabled (or versioning is suspended, you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE storage class at a specific period in the object's lifetime.

## SYNTAX

```
Add-VSS3BucketNoncurrentVersionTransition [-StorageClass] <Object> [-TransitionInDays] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.NoncurrentVersionTransition resource property to the template.
Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE storage class.
If your bucket is versioning-enabled (or versioning is suspended, you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, or DEEP_ARCHIVE storage class at a specific period in the object's lifetime.

## PARAMETERS

### -StorageClass
The class of storage used to store the object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition-storageclass
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

### -TransitionInDays
Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action.
For information about the noncurrent days calculations, see How Amazon S3 Calculates How Long an Object Has Been Noncurrent: https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition-transitionindays
PrimitiveType: Integer
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

### Vaporshell.Resource.S3.Bucket.NoncurrentVersionTransition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html)

