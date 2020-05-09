# Add-VSGreengrassFunctionDefinitionVersionRunAs

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinitionVersion.RunAs resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-runas-description"\>\</a\>The user and group permissions used to run the Lambda function.
This setting overrides the default access identity that's specified for the group (by default, ggc_user and ggc_group.
You can override the user, group, or both.
For more information, see Run as: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-access-identity.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionVersionRunAs [[-Uid] <Object>] [[-Gid] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinitionVersion.RunAs resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-runas-description"\>\</a\>The user and group permissions used to run the Lambda function.
This setting overrides the default access identity that's specified for the group (by default, ggc_user and ggc_group.
You can override the user, group, or both.
For more information, see Run as: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-access-identity.html in the *AWS IoT Greengrass Developer Guide*.

**Important**

Running as the root user increases risks to your data and device.
Do not run as root (UID/GID=0 unless your business case requires it.
For more information and requirements, see Running a Lambda Function as Root: https://docs.aws.amazon.com/greengrass/latest/developerguide/lambda-group-config.html#lambda-running-as-root.

\<a name="aws-properties-greengrass-functiondefinitionversion-runas-inheritance"\>\</a\> In an AWS CloudFormation template, RunAs is a property of the  Execution : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html property type.

## PARAMETERS

### -Uid
The user ID whose permissions are used to run the Lambda function.
You can use the getent passwd command on your core device to look up the user ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-uid
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

### -Gid
The group ID whose permissions are used to run the Lambda function.
You can use the getent group command on your core device to look up the group ID.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-gid
PrimitiveType: Integer
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

### Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.RunAs
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html)

