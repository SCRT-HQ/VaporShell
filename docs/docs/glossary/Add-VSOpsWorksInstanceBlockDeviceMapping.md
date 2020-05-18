# Add-VSOpsWorksInstanceBlockDeviceMapping

## SYNOPSIS
Adds an AWS::OpsWorks::Instance.BlockDeviceMapping resource property to the template.
Describes a block device mapping.
This data type maps directly to the Amazon EC2 BlockDeviceMapping: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html data type.

## SYNTAX

```
Add-VSOpsWorksInstanceBlockDeviceMapping [[-DeviceName] <Object>] [[-Ebs] <Object>] [[-NoDevice] <Object>]
 [[-VirtualName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::OpsWorks::Instance.BlockDeviceMapping resource property to the template.
Describes a block device mapping.
This data type maps directly to the Amazon EC2 BlockDeviceMapping: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html data type.

## PARAMETERS

### -DeviceName
The device name that is exposed to the instance, such as /dev/sdh.
For the root device, you can use the explicit device name or you can set this parameter to ROOT_DEVICE and AWS OpsWorks Stacks will provide the correct device name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-devicename
PrimitiveType: String
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

### -Ebs
An EBSBlockDevice that defines how to configure an Amazon EBS volume when the instance is launched.
You can specify either the VirtualName or Ebs, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-ebs
Type: EbsBlockDevice
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
Suppresses the specified device included in the AMI's block device mapping.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-nodevice
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

### -VirtualName
The virtual device name.
For more information, see BlockDeviceMapping: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html.
You can specify either the VirtualName or Ebs, but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-virtualname
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

### Vaporshell.Resource.OpsWorks.Instance.BlockDeviceMapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html)

