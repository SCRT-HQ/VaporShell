# Add-VSGreengrassFunctionDefinitionDefaultConfig

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinition.DefaultConfig resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-defaultconfig-description"\>\</a\>The default configuration that applies to all Lambda functions in the function definition version.
Individual Lambda functions can override these settings.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionDefaultConfig [-Execution] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinition.DefaultConfig resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-defaultconfig-description"\>\</a\>The default configuration that applies to all Lambda functions in the function definition version.
Individual Lambda functions can override these settings.

\<a name="aws-properties-greengrass-functiondefinition-defaultconfig-inheritance"\>\</a\> In an AWS CloudFormation template, DefaultConfig is a property of the  FunctionDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Execution
Configuration settings for the Lambda execution environment on the AWS IoT Greengrass core.

Type: Execution
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html#cfn-greengrass-functiondefinition-defaultconfig-execution
UpdateType: Mutable

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

### Vaporshell.Resource.Greengrass.FunctionDefinition.DefaultConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html)

