# Add-VSOpsWorksLayerVolumeConfiguration

## SYNOPSIS
Adds an AWS::OpsWorks::Layer.VolumeConfiguration resource property to the template.
Describes an Amazon EBS volume configuration.

## SYNTAX

```
Add-VSOpsWorksLayerVolumeConfiguration [[-Encrypted] <Object>] [[-Iops] <Object>] [[-MountPoint] <Object>]
 [[-NumberOfDisks] <Object>] [[-RaidLevel] <Object>] [[-Size] <Object>] [[-VolumeType] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Layer.VolumeConfiguration resource property to the template.
Describes an Amazon EBS volume configuration.

## PARAMETERS

### -Encrypted
Specifies whether an Amazon EBS volume is encrypted.
For more information, see Amazon EBS Encryption: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volumeconfiguration-encrypted
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
The number of I/O operations per second IOPS to provision for the volume.
For PIOPS volumes, the IOPS per disk.
If you specify io1 for the volume type, you must specify this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-iops
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

### -MountPoint
The volume mount point.
For example "/dev/sdh".

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-mountpoint
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

### -NumberOfDisks
The number of disks in the volume.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-numberofdisks
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

### -RaidLevel
The volume RAID level: http://en.wikipedia.org/wiki/Standard_RAID_levels.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-raidlevel
PrimitiveType: Integer
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

### -Size
The volume size.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-size
PrimitiveType: Integer
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

### -VolumeType
The volume type.
For more information, see  Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html.
+  standard - Magnetic.
Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.
+  io1 - Provisioned IOPS SSD.
PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.
+  gp2 - General Purpose SSD.
General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.
+  st1 - Throughput Optimized hard disk drive HDD.
Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.
+  sc1 - Cold HDD.
Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-volumetype
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.OpsWorks.Layer.VolumeConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html)

