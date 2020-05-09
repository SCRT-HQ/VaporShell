# Add-VSS3BucketReplicationRule

## SYNOPSIS
Adds an AWS::S3::Bucket.ReplicationRule resource property to the template.
Specifies which Amazon S3 objects to replicate and where to store the replicas.

## SYNTAX

```
Add-VSS3BucketReplicationRule [-Destination] <Object> [[-Id] <Object>] [-Prefix] <Object>
 [[-SourceSelectionCriteria] <Object>] [-Status] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.ReplicationRule resource property to the template.
Specifies which Amazon S3 objects to replicate and where to store the replicas.

## PARAMETERS

### -Destination
A container for information about the replication destination and its configurations including enabling the S3 Replication Time Control S3 RTC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-destination
Type: ReplicationDestination
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

### -Id
A unique identifier for the rule.
The maximum value is 255 characters.
If you don't specify a value, AWS CloudFormation generates a random ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-id
PrimitiveType: String
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

### -Prefix
An object key name prefix that identifies the object or objects to which the rule applies.
The maximum prefix length is 1,024 characters.
To include all objects in a bucket, specify an empty string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-prefix
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceSelectionCriteria
A container that describes additional filters for identifying the source objects that you want to replicate.
You can choose to enable or disable the replication of these objects.
Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer master key CMK stored in AWS Key Management Service SSE-KMS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationrule-sourceselectioncriteria
Type: SourceSelectionCriteria
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

### -Status
Specifies whether the rule is enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html#cfn-s3-bucket-replicationconfiguration-rules-status
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.ReplicationRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules.html)

