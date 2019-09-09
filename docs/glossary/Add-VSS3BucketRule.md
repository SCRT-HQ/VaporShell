# Add-VSS3BucketRule

## SYNOPSIS
Adds an AWS::S3::Bucket.Rule resource property to the template.
Specifies lifecycle rules for an Amazon S3 bucket.
For more information, see PUT Bucket lifecycle: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlifecycle.html in the *Amazon Simple Storage Service API Reference*.

## SYNTAX

```
Add-VSS3BucketRule [[-AbortIncompleteMultipartUpload] <Object>] [[-ExpirationDate] <Object>]
 [[-ExpirationInDays] <Int32>] [[-Id] <Object>] [[-NoncurrentVersionExpirationInDays] <Int32>]
 [[-NoncurrentVersionTransition] <Object>] [[-NoncurrentVersionTransitions] <Object>] [[-Prefix] <Object>]
 [-Status] <Object> [[-TagFilters] <Object>] [[-Transition] <Object>] [[-Transitions] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.Rule resource property to the template.
Specifies lifecycle rules for an Amazon S3 bucket.
For more information, see PUT Bucket lifecycle: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlifecycle.html in the *Amazon Simple Storage Service API Reference*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AbortIncompleteMultipartUpload
Specifies a lifecycle rule that aborts incomplete multipart uploads to an Amazon S3 bucket.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-abortincompletemultipartupload
Type: AbortIncompleteMultipartUpload
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

### -ExpirationDate
Indicates when objects are deleted from Amazon S3 and Amazon S3 Glacier.
The date value must be in ISO 8601 format.
The time is always midnight UTC.
If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date.
The expiration time must also be later than the transition time.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationdate
PrimitiveType: Timestamp
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

### -ExpirationInDays
Indicates the number of days after creation when objects are deleted from Amazon S3 and Amazon S3 Glacier.
If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date.
The expiration time must also be later than the transition time.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-expirationindays
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

### -Id
Unique identifier for the rule.
The value can't be longer than 255 characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-id
PrimitiveType: String
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

### -NoncurrentVersionExpirationInDays
For buckets with versioning enabled or suspended, specifies the time, in days, between when a new version of the object is uploaded to the bucket and when old versions of the object expire.
When object versions expire, Amazon S3 permanently deletes them.
If you specify a transition and expiration time, the expiration time must be later than the transition time.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversionexpirationindays
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

### -NoncurrentVersionTransition
Deprecated.
For buckets with versioning enabled or suspended, specifies when non-current objects transition to a specified storage class.
If you specify a transition and expiration time, the expiration time must be later than the transition time.
If you specify this property, don't specify the NoncurrentVersionTransitions property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition
Type: NoncurrentVersionTransition
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoncurrentVersionTransitions
For buckets with versioning enabled or suspended, one or more transition rules that specify when non-current objects transition to a specified storage class.
If you specify a transition and expiration time, the expiration time must be later than the transition time.
If you specify this property, don't specify the NoncurrentVersionTransition property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransitions
DuplicatesAllowed: False
ItemType: NoncurrentVersionTransition
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prefix
Object key prefix that identifies one or more objects to which this rule applies.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-prefix
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
If Enabled, the rule is currently being applied.
If Disabled, the rule is not currently being applied.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-status
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagFilters
Tags to use to identify a subset of objects to which the lifecycle rule applies.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-rule-tagfilters
DuplicatesAllowed: False
ItemType: TagFilter
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Transition
Deprecated.
Specifies when an object transitions to a specified storage class.
If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date.
The expiration time must also be later than the transition time.
If you specify this property, don't specify the Transitions property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transition
Type: Transition
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Transitions
One or more transition rules that specify when an object transitions to a specified storage class.
If you specify an expiration and transition time, you must use the same time unit for both properties either in days or by date.
The expiration time must also be later than the transition time.
If you specify this property, don't specify the Transition property.
You must specify at least one of the following properties: AbortIncompleteMultipartUpload, ExpirationDate, ExpirationInDays, NoncurrentVersionExpirationInDays, NoncurrentVersionTransition, NoncurrentVersionTransitions, Transition, or Transitions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html#cfn-s3-bucket-lifecycleconfig-rule-transitions
DuplicatesAllowed: False
ItemType: Transition
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.Rule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html)

