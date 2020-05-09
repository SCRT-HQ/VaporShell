# Add-VSGreengrassFunctionDefinitionEnvironment

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinition.Environment resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-environment-description"\>\</a\>The environment configuration for a Lambda function on the AWS IoT Greengrass core.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionEnvironment [[-Variables] <Object>] [[-Execution] <Object>]
 [[-ResourceAccessPolicies] <Object>] [[-AccessSysfs] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinition.Environment resource property to the template.
\<a name="aws-properties-greengrass-functiondefinition-environment-description"\>\</a\>The environment configuration for a Lambda function on the AWS IoT Greengrass core.

\<a name="aws-properties-greengrass-functiondefinition-environment-inheritance"\>\</a\> In an AWS CloudFormation template, Environment is a property of the  FunctionConfiguration : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html property type.

## PARAMETERS

### -Variables
Environment variables for the Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-variables
PrimitiveType: Json
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

### -Execution
Settings for the Lambda execution environment in AWS IoT Greengrass.

Type: Execution
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-execution
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

### -ResourceAccessPolicies
A list of the resources: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html in the group that the function can access, with the corresponding read-only or read-write permissions.
The maximum is 10 resources.
This property applies only for Lambda functions that run in a Greengrass container.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-resourceaccesspolicies
ItemType: ResourceAccessPolicy
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

### -AccessSysfs
Indicates whether the function is allowed to access the /sys directory on the core device, which allows the read device information from /sys.
This property applies only to Lambda functions that run in a Greengrass container.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-accesssysfs
PrimitiveType: Boolean
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.FunctionDefinition.Environment
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html)

