# Add-VSGreengrassDeviceDefinitionVersionDevice

## SYNOPSIS
Adds an AWS::Greengrass::DeviceDefinitionVersion.Device resource property to the template.
\<a name="aws-properties-greengrass-devicedefinitionversion-device-description"\>\</a\> A device is an AWS IoT device (thing that's added to a Greengrass group.
Greengrass devices can communicate with the Greengrass core in the same group.
For more information, see What Is AWS IoT Greengrass?: https://docs.aws.amazon.com/greengrass/latest/developerguide/what-is-gg.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassDeviceDefinitionVersionDevice [[-SyncShadow] <Object>] [-ThingArn] <Object> [-Id] <Object>
 [-CertificateArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::DeviceDefinitionVersion.Device resource property to the template.
\<a name="aws-properties-greengrass-devicedefinitionversion-device-description"\>\</a\> A device is an AWS IoT device (thing that's added to a Greengrass group.
Greengrass devices can communicate with the Greengrass core in the same group.
For more information, see What Is AWS IoT Greengrass?: https://docs.aws.amazon.com/greengrass/latest/developerguide/what-is-gg.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-devicedefinitionversion-device-inheritance"\>\</a\> In an AWS CloudFormation template, the Devices property of the  AWS::Greengrass::DeviceDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html resource contains a list of Device property types.

## PARAMETERS

### -SyncShadow
Indicates whether the device's local shadow is synced with the cloud automatically.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-syncshadow
PrimitiveType: Boolean
UpdateType: Immutable

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

### -ThingArn
The Amazon Resource Name ARN of the device, which is an AWS IoT device thing.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-thingarn
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
A descriptive or arbitrary ID for the device.
This value must be unique within the device definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-id
PrimitiveType: String
UpdateType: Immutable

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

### -CertificateArn
The ARN of the device certificate for the device.
This X.509 certificate is used to authenticate the device with AWS IoT and AWS IoT Greengrass services.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html#cfn-greengrass-devicedefinitionversion-device-certificatearn
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.DeviceDefinitionVersion.Device
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinitionversion-device.html)

