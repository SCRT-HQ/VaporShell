# Add-VSGreengrassCoreDefinitionCoreDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::CoreDefinition.CoreDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-coredefinition-coredefinitionversion-description"\>\</a\> A core definition version contains a Greengrass core: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html.

## SYNTAX

```
Add-VSGreengrassCoreDefinitionCoreDefinitionVersion [-Cores] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::CoreDefinition.CoreDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-coredefinition-coredefinitionversion-description"\>\</a\> A core definition version contains a Greengrass core: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html.

**Note**

After you create a core definition version that contains the core you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-coredefinition-coredefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, CoreDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::CoreDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-coredefinition.html resource.

## PARAMETERS

### -Cores
The Greengrass core in this version.
Currently, the Cores property for a core definition version can contain only one core.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html#cfn-greengrass-coredefinition-coredefinitionversion-cores
ItemType: Core
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

### Vaporshell.Resource.Greengrass.CoreDefinition.CoreDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-coredefinitionversion.html)

