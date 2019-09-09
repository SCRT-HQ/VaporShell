# Add-VSGreengrassCoreDefinitionVersionCore

## SYNOPSIS
Adds an AWS::Greengrass::CoreDefinitionVersion.Core resource property to the template.
\<a name="aws-properties-greengrass-coredefinitionversion-core-description"\>\</a\> A core is an AWS IoT device that runs the AWS IoT Greengrass core software and manages local processes for a Greengrass group.
For more information, see What Is AWS IoT Greengrass?: https://docs.aws.amazon.com/greengrass/latest/developerguide/what-is-gg.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassCoreDefinitionVersionCore [[-SyncShadow] <Boolean>] [-ThingArn] <Object> [-Id] <Object>
 [-CertificateArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::CoreDefinitionVersion.Core resource property to the template.
\<a name="aws-properties-greengrass-coredefinitionversion-core-description"\>\</a\> A core is an AWS IoT device that runs the AWS IoT Greengrass core software and manages local processes for a Greengrass group.
For more information, see What Is AWS IoT Greengrass?: https://docs.aws.amazon.com/greengrass/latest/developerguide/what-is-gg.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-coredefinitionversion-core-inheritance"\>\</a\> In an AWS CloudFormation template, the Cores property of the  AWS::Greengrass::CoreDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinitionversion.html resource contains a list of Core property types.
Currently, the list can contain only one core.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SyncShadow
Indicates whether the core's local shadow is synced with the cloud automatically.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-syncshadow
PrimitiveType: Boolean
UpdateType: Immutable

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

### -ThingArn
The Amazon Resource Name ARN of the core, which is an AWS IoT device thing.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-thingarn
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
A descriptive or arbitrary ID for the core.
This value must be unique within the core definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-id
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
The ARN of the device certificate for the core.
This X.509 certificate is used to authenticate the core with AWS IoT and AWS IoT Greengrass services.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-certificatearn
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

### Vaporshell.Resource.Greengrass.CoreDefinitionVersion.Core
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html)

