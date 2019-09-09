# Add-VSGreengrassDeviceDefinitionDeviceDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-devicedefinition-devicedefinitionversion-description"\>\</a\> A device definition version contains a list of devices: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html.

## SYNTAX

```
Add-VSGreengrassDeviceDefinitionDeviceDefinitionVersion [-Devices] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-devicedefinition-devicedefinitionversion-description"\>\</a\> A device definition version contains a list of devices: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html.

**Note**

After you create a device definition version that contains the devices you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-devicedefinition-devicedefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, DeviceDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::DeviceDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Devices
The devices in this version.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html#cfn-greengrass-devicedefinition-devicedefinitionversion-devices
ItemType: Device
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.DeviceDefinition.DeviceDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-devicedefinitionversion.html)

