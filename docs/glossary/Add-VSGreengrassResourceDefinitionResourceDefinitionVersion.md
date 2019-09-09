# Add-VSGreengrassResourceDefinitionResourceDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinition-resourcedefinitionversion-description"\>\</a\>A resource definition version contains a list of resources.
(In AWS CloudFormation, resources are named *resource instances*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionResourceDefinitionVersion [-Resources] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinition-resourcedefinitionversion-description"\>\</a\>A resource definition version contains a list of resources.
(In AWS CloudFormation, resources are named *resource instances*.

**Note**

After you create a resource definition version that contains the resources you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-resourcedefinition-resourcedefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, ResourceDefinitionVersion is the property type of the InitialVersion property in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Resources
The resources in this version.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html#cfn-greengrass-resourcedefinition-resourcedefinitionversion-resources
ItemType: ResourceInstance
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

### Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html)

