# New-VSEC2Volume

## SYNOPSIS
Adds an AWS::EC2::Volume resource to the template.
Specifies an Amazon Elastic Block Store (Amazon EBS volume.

## SYNTAX

```
New-VSEC2Volume [-LogicalId] <String> [-AutoEnableIO <Boolean>] -AvailabilityZone <Object>
 [-Encrypted <Boolean>] [-Iops <Int32>] [-KmsKeyId <Object>] [-Size <Int32>] [-SnapshotId <Object>]
 [-Tags <Object>] [-VolumeType <Object>] [-DeletionPolicy <String>] [-DependsOn <String[]>]
 [-Metadata <Object>] [-UpdatePolicy <Object>] [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Volume resource to the template.
Specifies an Amazon Elastic Block Store (Amazon EBS volume.

When you use AWS CloudFormation to update an Amazon EBS volume that modifies Iops, Size, or VolumeType, there is a cooldown period before another operation can occur.
This can cause your stack to report being in UPDATE_IN_PROGRESS or UPDATE_ROLLBACK_IN_PROGRESS for long periods of time.

Amazon EBS does not support modifying a Magnetic volume.
For more information, see Requirements for Modifying EBS Volumes: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/modify-volume-requirements.html.

Amazon EBS does not support sizing down an Amazon EBS volume.
AWS CloudFormation will not attempt to modify an Amazon EBS volume to a smaller size on rollback.

Some common scenarios when you might encounter a cooldown period for Amazon EBS include:

+ You successfully update an Amazon EBS volume and the update succeeds.
When you attempt another update within the cooldown window, that update will be subject to a cooldown period.

+ You successfully update an Amazon EBS volume and the update succeeds but another change in your update-stack call fails.
The rollback will be subject to a cooldown period.

For more information on the cooldown period, see Requirements for Modifying EBS Volumes: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/modify-volume-requirements.html.

To control how AWS CloudFormation handles the volume when the stack is deleted, set a deletion policy for your volume.
You can choose to retain the volume, to delete the volume, or to create a snapshot of the volume.
For more information, see DeletionPolicy Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html.

**Note**

If you set a deletion policy that creates a snapshot, all tags on the volume are included in the snapshot.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoEnableIO
Indicates whether the volume is auto-enabled for I/O operations.
By default, Amazon EBS disables I/O to the volume from attached EC2 instances when it determines that a volume's data is potentially inconsistent.
If the consistency of the volume is not a concern, and you prefer that the volume be made available immediately if it's impaired, you can configure the volume to automatically enable I/O.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-autoenableio
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AvailabilityZone
The Availability Zone in which to create the volume.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-availabilityzone
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encrypted
Specifies whether the volume should be encrypted.
The effect of setting the encryption state to true depends on the volume origin new or from a snapshot, starting encryption state, ownership, and whether encryption by default is enabled.
For more information, see Encryption by Default: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default in the *Amazon Elastic Compute Cloud User Guide*.
Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption.
For more information, see Supported Instance Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-encrypted
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Iops
The number of I/O operations per second IOPS to provision for the volume, with a maximum ratio of 50 IOPS/GiB.
Range is 100 to 64,000 IOPS for volumes in most Regions.
Maximum IOPS of 64,000 is guaranteed only on Nitro-based instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances.
Other instance families guarantee performance up to 32,000 IOPS.
For more information, see Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html in the *Amazon Elastic Compute Cloud User Guide*.
This parameter is valid only for Provisioned IOPS SSD io1 volumes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-iops
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -KmsKeyId
The identifier of the AWS Key Management Service AWS KMS customer master key CMK to use for Amazon EBS encryption.
If this parameter is not specified, your AWS managed CMK for EBS is used.
If KmsKeyId is specified, the encrypted state must be true.
You can specify the CMK using any of the following:
+ Key ID.
For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.
+ Key alias.
For example, alias/ExampleAlias.
+ Key ARN.
For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
+ Alias ARN.
For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.
AWS authenticates the CMK asynchronously.
Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-kmskeyid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Size
The size of the volume, in GiBs.
Constraints: 1-16,384 for gp2, 4-16,384 for io1, 500-16,384 for st1, 500-16,384 for sc1, and 1-1,024 for standard.
If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.
Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.
At least one of Size or SnapshotId is required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-size
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SnapshotId
The snapshot from which to create the volume.
At least one of Size or SnapshotId are required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-snapshotid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
The tags to apply to the volume during creation.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-tags
DuplicatesAllowed: True
ItemType: Tag
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeType
The volume type.
This can be gp2 for General Purpose SSD, io1 for Provisioned IOPS SSD, st1 for Throughput Optimized HDD, sc1 for Cold HDD, or standard for Magnetic volumes.
Defaults: If no volume type is specified, the default is standard in us-east-1, eu-west-1, eu-central-1, us-west-2, us-west-1, sa-east-1, ap-northeast-1, ap-northeast-2, ap-southeast-1, ap-southeast-2, ap-south-1, us-gov-west-1, and cn-north-1.
In all other Regions, EBS defaults to gp2.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-volumetype
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Volume
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html)

