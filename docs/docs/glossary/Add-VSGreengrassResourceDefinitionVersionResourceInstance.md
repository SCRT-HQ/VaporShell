# Add-VSGreengrassResourceDefinitionVersionResourceInstance

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinitionVersion.ResourceInstance resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-resourceinstance-description"\>\</a\>A local resource, machine learning resource, or secret resource.
For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html, Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html, and Deploy Secrets to the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/secrets.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionVersionResourceInstance [-ResourceDataContainer] <Object> [-Id] <Object>
 [-Name] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinitionVersion.ResourceInstance resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-resourceinstance-description"\>\</a\>A local resource, machine learning resource, or secret resource.
For more information, see Access Local Resources with Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-local-resources.html, Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html, and Deploy Secrets to the AWS IoT Greengrass Core: https://docs.aws.amazon.com/greengrass/latest/developerguide/secrets.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinitionversion-resourceinstance-inheritance"\>\</a\> In an AWS CloudFormation template, the Resources property of the  AWS::Greengrass::ResourceDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html resource contains a list of ResourceInstance property types.

## PARAMETERS

### -ResourceDataContainer
A container for resource data.
The container takes only one of the following supported resource data types: LocalDeviceResourceData, LocalVolumeResourceData, SageMakerMachineLearningModelResourceData, S3MachineLearningModelResourceData, or SecretsManagerSecretResourceData.
Only one resource type can be defined for a ResourceDataContainer instance.

Type: ResourceDataContainer
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-resourcedatacontainer
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

### -Id
A descriptive or arbitrary ID for the resource.
This value must be unique within the resource definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-id
PrimitiveType: String
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

### -Name
The descriptive resource name, which is displayed on the AWS IoT Greengrass console.
Maximum length 128 characters with pattern a-zA-Z0-9:_-\]+.
This must be unique within a Greengrass group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-name
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

### Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.ResourceInstance
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html)

