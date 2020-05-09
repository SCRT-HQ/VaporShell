# Add-VSGreengrassFunctionDefinitionFunctionDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinition.FunctionDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-functiondefinitionversion-description"\>\</a\>A function definition version contains a list of functions.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionFunctionDefinitionVersion [[-DefaultConfig] <Object>] [-Functions] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinition.FunctionDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-functiondefinitionversion-description"\>\</a\>A function definition version contains a list of functions.

**Note**

After you create a function definition version that contains the functions you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-functiondefinition-functiondefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, FunctionDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::FunctionDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html resource.

## PARAMETERS

### -DefaultConfig
The default configuration that applies to all Lambda functions in the group.
Individual Lambda functions can override these settings.

Type: DefaultConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-defaultconfig
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

### -Functions
The functions in this version.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-functions
ItemType: Function
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.FunctionDefinition.FunctionDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html)

