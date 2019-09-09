# Add-VSEC2LaunchTemplateBlockDeviceMapping

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.BlockDeviceMapping resource property to the template.
Information about a block device mapping for an Amazon EC2 launch template.

## SYNTAX

```
Add-VSEC2LaunchTemplateBlockDeviceMapping [[-Ebs] <Object>] [[-NoDevice] <Object>] [[-VirtualName] <Object>]
 [[-DeviceName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.BlockDeviceMapping resource property to the template.
Information about a block device mapping for an Amazon EC2 launch template.

BlockDeviceMapping is a property of the  Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Ebs
Parameters used to automatically set up EBS volumes when the instance is launched.

Type: Ebs
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs
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

### -NoDevice
Suppresses the specified device included in the block device mapping of the AMI.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-nodevice
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

### -VirtualName
The virtual device name ephemeralN.
Instance store volumes are numbered starting from 0.
An instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1.
The number of available instance store volumes depends on the instance type.
After you connect to the instance, you must mount the volume.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-virtualname
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

### -DeviceName
The device name for example, /dev/sdh or xvdh.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-devicename
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

### Vaporshell.Resource.EC2.LaunchTemplate.BlockDeviceMapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html)

