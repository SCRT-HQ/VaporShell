# Add-VSGreengrassResourceDefinitionLocalVolumeResourceData

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinition.LocalVolumeResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinition-localvolumeresourcedata-description"\>\</a\>Settings for a local volume resource, which represents a file or directory on the root file system.
For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionLocalVolumeResourceData [-SourcePath] <Object> [-DestinationPath] <Object>
 [[-GroupOwnerSetting] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinition.LocalVolumeResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinition-localvolumeresourcedata-description"\>\</a\>Settings for a local volume resource, which represents a file or directory on the root file system.
For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinition-localvolumeresourcedata-inheritance"\>\</a\> In an AWS CloudFormation template, LocalVolumeResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html property type.

## PARAMETERS

### -SourcePath
The local absolute path of the volume resource on the host.
The source path for a volume resource type cannot start with /sys.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-sourcepath
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

### -DestinationPath
The absolute local path of the resource in the Lambda environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-destinationpath
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

### -GroupOwnerSetting
Settings that define additional Linux OS group permissions to give to the Lambda function process.

Type: GroupOwnerSetting
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-groupownersetting
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.ResourceDefinition.LocalVolumeResourceData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html)

