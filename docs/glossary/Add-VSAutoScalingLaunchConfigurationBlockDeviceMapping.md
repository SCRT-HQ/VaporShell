# Add-VSAutoScalingLaunchConfigurationBlockDeviceMapping

## SYNOPSIS
Adds an AWS::AutoScaling::LaunchConfiguration.BlockDeviceMapping resource property to the template.
BlockDeviceMapping is a property of LaunchConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html that describes a block device mapping for an Amazon EC2 Auto Scaling group.

## SYNTAX

```
Add-VSAutoScalingLaunchConfigurationBlockDeviceMapping [-DeviceName] <Object> [[-Ebs] <Object>]
 [[-NoDevice] <Boolean>] [[-VirtualName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::LaunchConfiguration.BlockDeviceMapping resource property to the template.
BlockDeviceMapping is a property of LaunchConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html that describes a block device mapping for an Amazon EC2 Auto Scaling group.

Each instance that is launched has an associated root device volume, either an Amazon EBS volume or an instance store volume.
You can use block device mappings to specify additional EBS volumes or instance store volumes to attach to an instance when it is launched.

For more information, see Example Block Device Mapping: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#block-device-mapping-ex in the *Amazon EC2 User Guide for Linux Instances*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeviceName
The device name exposed to the EC2 instance for example, /dev/sdh or xvdh.
For more information, see Device Naming on Linux Instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html in the *Amazon EC2 User Guide for Linux Instances*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-devicename
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
The information about the Amazon EBS volume.
You can specify either VirtualName or Ebs, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-ebs
Type: BlockDevice
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
Suppresses the device mapping.
If this property is set to true for the root device, the instance might fail the Amazon EC2 health check.
Amazon EC2 Auto Scaling launches a replacement instance if the instance fails the health check.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-nodevice
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -VirtualName
The name of the virtual device.
The name must be in the form ephemeral*X* where *X* is a number starting from zero 0, for example, ephemeral0.
You can specify either VirtualName or Ebs, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-virtualname
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

### Vaporshell.Resource.AutoScaling.LaunchConfiguration.BlockDeviceMapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html)

