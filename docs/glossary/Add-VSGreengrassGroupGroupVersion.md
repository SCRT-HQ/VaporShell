# Add-VSGreengrassGroupGroupVersion

## SYNOPSIS
Adds an AWS::Greengrass::Group.GroupVersion resource property to the template.
\<a name="aws-properties-greengrass-group-groupversion-description"\>\</a\>A group version in AWS IoT Greengrass, which references of a core definition version, device definition version, subscription definition version, and other version types that contain the components you want to deploy to a Greengrass core device.
The group version must reference a core definition version that contains one core.
Other version types are optionally included, depending on your business need.

## SYNTAX

```
Add-VSGreengrassGroupGroupVersion [[-LoggerDefinitionVersionArn] <Object>]
 [[-DeviceDefinitionVersionArn] <Object>] [[-FunctionDefinitionVersionArn] <Object>]
 [[-CoreDefinitionVersionArn] <Object>] [[-ResourceDefinitionVersionArn] <Object>]
 [[-ConnectorDefinitionVersionArn] <Object>] [[-SubscriptionDefinitionVersionArn] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::Group.GroupVersion resource property to the template.
\<a name="aws-properties-greengrass-group-groupversion-description"\>\</a\>A group version in AWS IoT Greengrass, which references of a core definition version, device definition version, subscription definition version, and other version types that contain the components you want to deploy to a Greengrass core device.
The group version must reference a core definition version that contains one core.
Other version types are optionally included, depending on your business need.

\<a name="aws-properties-greengrass-group-groupversion-inheritance"\>\</a\> In an AWS CloudFormation template, GroupVersion is the property type of the InitialVersion property in the  AWS::Greengrass::Group : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LoggerDefinitionVersionArn
The ARN of the logger definition version that contains the loggers you want to deploy with the group version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-loggerdefinitionversionarn
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

### -DeviceDefinitionVersionArn
The ARN of the device definition version that contains the devices you want to deploy with the group version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-devicedefinitionversionarn
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

### -FunctionDefinitionVersionArn
The ARN of the function definition version that contains the functions you want to deploy with the group version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-functiondefinitionversionarn
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

### -CoreDefinitionVersionArn
The ARN of the core definition version that contains the core you want to deploy with the group version.
Currently, the core definition version can contain only one core.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-coredefinitionversionarn
PrimitiveType: String
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

### -ResourceDefinitionVersionArn
The ARN of the resource definition version that contains the resources you want to deploy with the group version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-resourcedefinitionversionarn
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

### -ConnectorDefinitionVersionArn
The Amazon Resource Name ARN of the connector definition version that contains the connectors you want to deploy with the group version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-connectordefinitionversionarn
PrimitiveType: String
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

### -SubscriptionDefinitionVersionArn
The ARN of the subscription definition version that contains the subscriptions you want to deploy with the group version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html#cfn-greengrass-group-groupversion-subscriptiondefinitionversionarn
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

### Vaporshell.Resource.Greengrass.Group.GroupVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-group-groupversion.html)

