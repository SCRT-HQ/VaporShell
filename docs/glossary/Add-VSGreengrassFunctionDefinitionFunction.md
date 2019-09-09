# Add-VSGreengrassFunctionDefinitionFunction

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinition.Function resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-function-description"\>\</a\>A function is a Lambda function that's referenced from an AWS IoT Greengrass group.
The function is deployed to a Greengrass core where it runs locally.
For more information, see Run Lambda Functions on the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-functions.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionFunction [-FunctionArn] <Object> [-FunctionConfiguration] <Object>
 [-Id] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinition.Function resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-function-description"\>\</a\>A function is a Lambda function that's referenced from an AWS IoT Greengrass group.
The function is deployed to a Greengrass core where it runs locally.
For more information, see Run Lambda Functions on the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-functions.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-functiondefinition-function-inheritance"\>\</a\> In an AWS CloudFormation template, the Functions property of the  FunctionDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html property type contains a list of Function property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -FunctionArn
The Amazon Resource Name ARN of the alias recommended or version of the referenced Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-functionarn
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

### -FunctionConfiguration
The group-specific settings of the Lambda function.
These settings configure the function's behavior in the Greengrass group.

Type: FunctionConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-functionconfiguration
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
A descriptive or arbitrary ID for the function.
This value must be unique within the function definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-id
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

### Vaporshell.Resource.Greengrass.FunctionDefinition.Function
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html)

