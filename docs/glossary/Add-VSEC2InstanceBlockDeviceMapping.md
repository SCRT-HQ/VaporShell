# Add-VSEC2InstanceBlockDeviceMapping

## SYNOPSIS
Adds an AWS::EC2::Instance.BlockDeviceMapping resource property to the template.
Specifies a block device mapping for an instance.

## SYNTAX

```
Add-VSEC2InstanceBlockDeviceMapping [-DeviceName] <Object> [[-Ebs] <Object>] [[-NoDevice] <Object>]
 [[-VirtualName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.BlockDeviceMapping resource property to the template.
Specifies a block device mapping for an instance.

BlockDeviceMapping is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## PARAMETERS

### -DeviceName
The device name for example, /dev/sdh or xvdh.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-devicename
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

### -Ebs
Parameters used to automatically set up EBS volumes when the instance is launched.
You can specify either VirtualName or Ebs, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-ebs
Type: Ebs
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

### -NoDevice
Suppresses the specified device included in the block device mapping of the AMI.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-nodevice
Type: NoDevice
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

### -VirtualName
The virtual device name ephemeralN.
The name must be in the form ephemeral*X* where *X* is a number starting from zero 0.
For example, an instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1.
The number of available instance store volumes depends on the instance type.
After you connect to the instance, you must mount the volume.
NVMe instance store volumes are automatically enumerated and assigned a device name.
Including them in your block device mapping has no effect.
You can specify either VirtualName or Ebs, but not both.
*Constraints*: For M3 instances, you must specify instance store volumes in the block device mapping for the instance.
When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-virtualname
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance.BlockDeviceMapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html)

