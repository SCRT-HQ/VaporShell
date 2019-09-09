# Add-VSGreengrassConnectorDefinitionConnector

## SYNOPSIS
Adds an AWS::Greengrass::ConnectorDefinition.Connector resource property to the template.
\<a name="aws-properties-greengrass-connectordefinition-connector-description"\>\</a\>Connectors are modules that provide built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
For more information, see Integrate with Services and Protocols Using Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassConnectorDefinitionConnector [-ConnectorArn] <Object> [[-Parameters] <Object>] [-Id] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ConnectorDefinition.Connector resource property to the template.
\<a name="aws-properties-greengrass-connectordefinition-connector-description"\>\</a\>Connectors are modules that provide built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
For more information, see Integrate with Services and Protocols Using Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-connectordefinitionversion-connector-inheritance"\>\</a\> In an AWS CloudFormation template, the Connectors property of the  ConnectorDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html property type contains a list of Connector property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ConnectorArn
The Amazon Resource Name ARN of the connector.
For more information about AWS-provided connectors, see AWS-Provided Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors-list.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-connectorarn
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

### -Parameters
The parameters or configuration used by the connector.
For more information about AWS-provided connectors, see AWS-Provided Greengrass Connectors: https://docs.aws.amazon.com/greengrass/latest/developerguide/connectors-list.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-parameters
PrimitiveType: Json
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

### -Id
A descriptive or arbitrary ID for the connector.
This value must be unique within the connector definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-id
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.ConnectorDefinition.Connector
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html)

