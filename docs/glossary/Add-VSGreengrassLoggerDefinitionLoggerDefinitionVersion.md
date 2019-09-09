# Add-VSGreengrassLoggerDefinitionLoggerDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::LoggerDefinition.LoggerDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-loggerdefinition-loggerdefinitionversion-description"\>\</a\> A logger definition version contains a list of loggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html.

## SYNTAX

```
Add-VSGreengrassLoggerDefinitionLoggerDefinitionVersion [-Loggers] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::LoggerDefinition.LoggerDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-loggerdefinition-loggerdefinitionversion-description"\>\</a\> A logger definition version contains a list of loggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html.

**Note**

After you create a logger definition version that contains the loggers you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-loggerdefinition-loggerdefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, LoggerDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::LoggerDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Loggers
The loggers in this version.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html#cfn-greengrass-loggerdefinition-loggerdefinitionversion-loggers
ItemType: Logger
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

### Vaporshell.Resource.Greengrass.LoggerDefinition.LoggerDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html)

