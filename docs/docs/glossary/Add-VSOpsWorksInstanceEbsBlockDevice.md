# Add-VSOpsWorksInstanceEbsBlockDevice

## SYNOPSIS
Adds an AWS::OpsWorks::Instance.EbsBlockDevice resource property to the template.
Describes an Amazon EBS volume.
This data type maps directly to the Amazon EC2 EbsBlockDevice: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html data type.

## SYNTAX

```
Add-VSOpsWorksInstanceEbsBlockDevice [[-DeleteOnTermination] <Object>] [[-Iops] <Object>]
 [[-SnapshotId] <Object>] [[-VolumeSize] <Object>] [[-VolumeType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Instance.EbsBlockDevice resource property to the template.
Describes an Amazon EBS volume.
This data type maps directly to the Amazon EC2 EbsBlockDevice: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html data type.

## PARAMETERS

### -DeleteOnTermination
Whether the volume is deleted on instance termination.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-deleteontermination
PrimitiveType: Boolean
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

### -Iops
The number of I/O operations per second IOPS that the volume supports.
For more information, see EbsBlockDevice: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-iops
PrimitiveType: Integer
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

### -SnapshotId
The snapshot ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-snapshotid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeSize
The volume size, in GiB.
For more information, see EbsBlockDevice: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-volumesize
PrimitiveType: Integer
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

### -VolumeType
The volume type.
gp2 for General Purpose SSD volumes, io1 for Provisioned IOPS SSD volumes, st1 for Throughput Optimized hard disk drives HDD, sc1 for Cold HDD,and standard for Magnetic volumes.
If you specify the io1 volume type, you must also specify a value for the Iops attribute.
The maximum ratio of provisioned IOPS to requested volume size in GiB is 50:1.
AWS uses the default volume size in GiB specified in the AMI attributes to set IOPS to 50 x volume size.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-volumetype
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

### Vaporshell.Resource.OpsWorks.Instance.EbsBlockDevice
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html)

