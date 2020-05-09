# Add-VSGreengrassFunctionDefinitionVersionResourceAccessPolicy

## SYNOPSIS
Adds an AWS::Greengrass::FunctionDefinitionVersion.ResourceAccessPolicy resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy-description"\>\</a\>A list of the resources: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html in the group that the function can access, with the corresponding read-only or read-write permissions.
The maximum is 10 resources.

## SYNTAX

```
Add-VSGreengrassFunctionDefinitionVersionResourceAccessPolicy [-ResourceId] <Object> [[-Permission] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::FunctionDefinitionVersion.ResourceAccessPolicy resource property to the template.
\<a name="aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy-description"\>\</a\>A list of the resources: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html in the group that the function can access, with the corresponding read-only or read-write permissions.
The maximum is 10 resources.

**Note**

This property applies only to Lambda functions that run in a Greengrass container.

\<a name="aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy-inheritance"\>\</a\> In an AWS CloudFormation template, ResourceAccessPolicy is a property of the  Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html property type.

## PARAMETERS

### -ResourceId
The ID of the resource.
This ID is assigned to the resource when you create the resource definition.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-resourceid
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

### -Permission
The read-only or read-write access that the Lambda function has to the resource.
Valid values are ro or rw.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-permission
PrimitiveType: String
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

### Vaporshell.Resource.Greengrass.FunctionDefinitionVersion.ResourceAccessPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html)

