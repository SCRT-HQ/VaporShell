# Add-VSGreengrassFunctionDefinitionVersionFunctionConfiguration

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinitionVersion.FunctionConfiguration resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-functionconfiguration-description"\>\</a\>The group-specific configuration settings for a Lambda function.
These settings configure the function's behavior in the Greengrass group.
For more information, see Controlling Execution of Greengrass Lambda Functions by Using Group-Specific Configuration: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionVersionFunctionConfiguration [[-MemorySize] <Object>] [[-Pinned] <Object>]
 [[-ExecArgs] <Object>] [[-Timeout] <Object>] [[-EncodingType] <Object>] [[-Environment] <Object>]
 [[-Executable] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinitionVersion.FunctionConfiguration resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-functionconfiguration-description"\>\</a\>The group-specific configuration settings for a Lambda function.
These settings configure the function's behavior in the Greengrass group.
For more information, see Controlling Execution of Greengrass Lambda Functions by Using Group-Specific Configuration: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-functiondefinitionversion-functionconfiguration-inheritance"\>\</a\> In an AWS CloudFormation template, FunctionConfiguration is a property of the  Function: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html property type.

## PARAMETERS

### -MemorySize
The memory size in KB required by the function.
This property applies only to Lambda functions that run in a Greengrass container.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-memorysize
PrimitiveType: Integer
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

### -Pinned
Indicates whether the function is pinned or *long-lived*.
Pinned functions start when the core starts and process all requests in the same container.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-pinned
PrimitiveType: Boolean
UpdateType: Mutable

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

### -ExecArgs
The execution arguments.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-execargs
PrimitiveType: String
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

### -Timeout
The allowed execution time in seconds after which the function should terminate.
For pinned functions, this timeout applies for each request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-timeout
PrimitiveType: Integer
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncodingType
The expected encoding type of the input payload for the function.
Valid values are json default and binary.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-encodingtype
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Environment
The environment configuration of the function.

Type: Environment
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-environment
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Executable
The name of the function executable.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-executable
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.FunctionConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html)

