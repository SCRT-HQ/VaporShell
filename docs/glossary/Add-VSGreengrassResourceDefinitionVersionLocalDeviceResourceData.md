# Add-VSGreengrassResourceDefinitionVersionLocalDeviceResourceData

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinitionVersion.LocalDeviceResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata-description"\>\</a\>Settings for a local device resource, which represents a file under /dev.
For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionVersionLocalDeviceResourceData [-SourcePath] <Object>
 [[-GroupOwnerSetting] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinitionVersion.LocalDeviceResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata-description"\>\</a\>Settings for a local device resource, which represents a file under /dev.
For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata-inheritance"\>\</a\> In an AWS CloudFormation template, LocalDeviceResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SourcePath
The local absolute path of the device resource.
The source path for a device resource can refer only to a character device or block device under /dev.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-sourcepath
PrimitiveType: String
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

### -GroupOwnerSetting
Settings that define additional Linux OS group permissions to give to the Lambda function process.

Type: GroupOwnerSetting
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-groupownersetting
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.LocalDeviceResourceData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html)

