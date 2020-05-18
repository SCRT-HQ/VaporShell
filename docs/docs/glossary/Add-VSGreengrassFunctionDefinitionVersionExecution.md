# Add-VSGreengrassFunctionDefinitionVersionExecution

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinitionVersion.Execution resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-execution-description"\>\</a\>Configuration settings for the Lambda execution environment on the AWS IoT Greengrass core.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionVersionExecution [[-IsolationMode] <Object>] [[-RunAs] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinitionVersion.Execution resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-execution-description"\>\</a\>Configuration settings for the Lambda execution environment on the AWS IoT Greengrass core.

\<a name="aws-properties-greengrass-functiondefinitionversion-execution-inheritance"\>\</a\> In an AWS CloudFormation template, Execution is a property of the  DefaultConfig : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html property type for a function definition version and the  Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html property type for a function.

## PARAMETERS

### -IsolationMode
The containerization that the Lambda function runs in.
Valid values are GreengrassContainer or NoContainer.
Typically, this is GreengrassContainer.
For more information, see Containerization: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-function-containerization in the *AWS IoT Greengrass Developer Guide*.
+ When set on the  DefaultConfig : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html property of a function definition version, this setting is used as the default containerization for all Lambda functions in the function definition version.
+ When set on the  Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html property of a function, this setting applies to the individual function and overrides the default.
Omit this value to run the function with the default containerization.
We recommend that you run in a Greengrass container unless your business case requires that you run without containerization.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-isolationmode
PrimitiveType: String
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

### -RunAs
The user and group permissions used to run the Lambda function.
Typically, this is the ggc_user and ggc_group.
For more information, see Run as: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-access-identity.html in the *AWS IoT Greengrass Developer Guide*.
+ When set on the  DefaultConfig : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html property of a function definition version, this setting is used as the default access identity for all Lambda functions in the function definition version.
+ When set on the  Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html property of a function, this setting applies to the individual function and overrides the default.
You can override the user, group, or both.
Omit this value to run the function with the default permissions.
Running as the root user increases risks to your data and device.
Do not run as root UID/GID=0 unless your business case requires it.
For more information and requirements, see Running a Lambda Function as Root: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-running-as-root.

Type: RunAs
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-runas
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.Execution
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html)

