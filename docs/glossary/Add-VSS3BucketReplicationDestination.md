# Add-VSS3BucketReplicationDestination

## SYNOPSIS
Adds an AWS::S3::Bucket.ReplicationDestination resource property to the template.
Specifies which Amazon S3 bucket to store replicated objects in and their storage class.

## SYNTAX

```
Add-VSS3BucketReplicationDestination [[-AccessControlTranslation] <Object>] [[-Account] <Object>]
 [-Bucket] <Object> [[-EncryptionConfiguration] <Object>] [[-StorageClass] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket.ReplicationDestination resource property to the template.
Specifies which Amazon S3 bucket to store replicated objects in and their storage class.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AccessControlTranslation
Specify this only in a cross-account scenario where source and destination bucket owners are not the same, and you want to change replica ownership to the AWS account that owns the destination bucket.
If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationdestination-accesscontroltranslation
Type: AccessControlTranslation
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

### -Account
Destination bucket owner account ID.
In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the AWS account that owns the destination bucket by specifying the AccessControlTranslation property, this is the account ID of the destination bucket owner.
For more information, see Cross-Region Replication Additional Configuration: Change Replica Owner: https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-change-owner.html in the *Amazon Simple Storage Service Developer Guide*.
If you specify the AccessControlTranslation property, the Account property is required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationdestination-account
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

### -Bucket
The Amazon Resource Name ARN of the bucket where you want Amazon S3 to store replicas of the object identified by the rule.
A replication configuration can replicate objects to only one destination bucket.
If there are multiple rules in your replication configuration, all rules must specify the same destination bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-bucket
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

### -EncryptionConfiguration
Specifies encryption-related information.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationdestination-encryptionconfiguration
Type: EncryptionConfiguration
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

### -StorageClass
The storage class to use when replicating objects, such as standard or reduced redundancy.
By default, Amazon S3 uses the storage class of the source object to create the object replica.
For valid values, see the StorageClass element of the PUT Bucket replication: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html action in the *Amazon Simple Storage Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-storageclass
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket.ReplicationDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html)

