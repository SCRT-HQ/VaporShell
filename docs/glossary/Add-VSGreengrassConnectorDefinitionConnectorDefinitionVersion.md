# Add-VSGreengrassConnectorDefinitionConnectorDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::ConnectorDefinition.ConnectorDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-connectordefinition-connectordefinitionversion-description"\>\</a\>A connector definition version contains a list of connectors.

## SYNTAX

```
Add-VSGreengrassConnectorDefinitionConnectorDefinitionVersion [-Connectors] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ConnectorDefinition.ConnectorDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-connectordefinition-connectordefinitionversion-description"\>\</a\>A connector definition version contains a list of connectors.

**Note**

After you create a connector definition version that contains the connectors you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-connectordefinition-connectordefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, ConnectorDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::ConnectorDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Connectors
The connectors in this version.
Only one instance of a given connector can be added to a connector definition version at a time.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html#cfn-greengrass-connectordefinition-connectordefinitionversion-connectors
ItemType: Connector
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

### Vaporshell.Resource.Greengrass.ConnectorDefinition.ConnectorDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html)

