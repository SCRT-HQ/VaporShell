# Add-VSAutoScalingLaunchConfigurationBlockDevice

## SYNOPSIS
Adds an AWS::AutoScaling::LaunchConfiguration.BlockDevice resource property to the template.
BlockDevice is a subproperty of BlockDeviceMapping: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html that describes an Amazon EBS volume.

## SYNTAX

```
Add-VSAutoScalingLaunchConfigurationBlockDevice [[-DeleteOnTermination] <Boolean>] [[-Encrypted] <Boolean>]
 [[-Iops] <Int32>] [[-SnapshotId] <Object>] [[-VolumeSize] <Int32>] [[-VolumeType] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::LaunchConfiguration.BlockDevice resource property to the template.
BlockDevice is a subproperty of BlockDeviceMapping: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html that describes an Amazon EBS volume.

For Amazon EC2 Auto Scaling EBS Block Device snippets, see Auto Scaling Launch Configuration Resource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html#scenario-as-launch-config.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeleteOnTermination
Indicates whether to delete the volume when the instance is terminated.
For Amazon EC2 Auto Scaling, the default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-deleteonterm
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encrypted
Specifies whether the EBS volume is encrypted.
Encrypted EBS volumes can only be attached to instances that support Amazon EBS encryption.
For more information, see Supported Instance Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances.
If your AMI uses encrypted volumes, you can also only launch it on supported instance types.
If you are creating a volume from a snapshot, you cannot specify an encryption value.
Volumes that are created from encrypted snapshots are automatically encrypted, and volumes that are created from unencrypted snapshots are automatically unencrypted.
By default, encrypted snapshots use the AWS managed CMK that is used for EBS encryption, but you can specify a custom CMK when you create the snapshot.
The ability to encrypt a snapshot during copying also allows you to apply a new CMK to an already-encrypted snapshot.
Volumes restored from the resulting copy are only accessible using the new CMK.
Enabling encryption by default: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default results in all EBS volumes being encrypted with the AWS managed CMK or a customer managed CMK, whether or not the snapshot was encrypted.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-encrypted
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Iops
The number of I/O operations per second IOPS to provision for the volume.
The maximum ratio of IOPS to volume size in GiB is 50:1, so for 5,000 provisioned IOPS, you need at least 100 GiB storage on the volume.
For more information, see Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html in the *Amazon EC2 User Guide for Linux Instances*.
If the volume type is io1, this property is required.
Not used with standard, gp2, st1, or sc1 volumes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-iops
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

### -SnapshotId
The snapshot ID of the volume to use.
You must specify either a VolumeSize or a SnapshotId.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-snapshotid
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

### -VolumeSize
The volume size, in Gibibytes GiB.
This can be a number from 1-1,024 for standard, 4-16,384 for io1, 1-16,384 for gp2, and 500-16,384 for st1 and sc1.
If you create a volume from a snapshot and you don't specify a volume size, the default is the snapshot size.
You must specify either a VolumeSize or a SnapshotId.
If you specify both SnapshotId and VolumeSize, VolumeSize must be equal or greater than the size of the snapshot.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumesize
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

### -VolumeType
The volume type, which can be standard for Magnetic, io1 for Provisioned IOPS SSD, gp2 for General Purpose SSD, st1 for Throughput Optimized HDD, or sc1 for Cold HDD.
For more information, see Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html in the *Amazon EC2 User Guide for Linux Instances*.
Valid values: standard | io1 | gp2 | st1 | sc1

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumetype
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.LaunchConfiguration.BlockDevice
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html)

