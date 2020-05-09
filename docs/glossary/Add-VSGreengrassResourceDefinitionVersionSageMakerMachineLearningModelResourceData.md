# Add-VSGreengrassResourceDefinitionVersionSageMakerMachineLearningModelResourceData

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinitionVersion.SageMakerMachineLearningModelResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-description"\>\</a\>Settings for an Secrets Manager machine learning resource.
For more information, see Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionVersionSageMakerMachineLearningModelResourceData [[-OwnerSetting] <Object>]
 [-DestinationPath] <Object> [-SageMakerJobArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinitionVersion.SageMakerMachineLearningModelResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-description"\>\</a\>Settings for an Secrets Manager machine learning resource.
For more information, see Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-inheritance"\>\</a\> In an AWS CloudFormation template, SageMakerMachineLearningModelResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html property type.

## PARAMETERS

### -OwnerSetting
The owner setting for the downloaded machine learning resource.
For more information, see Access Machine Learning Resources from Lambda Functions: https://docs.aws.amazon.com/greengrass/latest/developerguide/access-ml-resources.html in the *AWS IoT Greengrass Developer Guide*.

Type: ResourceDownloadOwnerSetting
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-ownersetting
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

### -DestinationPath
The absolute local path of the resource inside the Lambda environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-destinationpath
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

### -SageMakerJobArn
The Amazon Resource Name ARN of the Amazon SageMaker training job that represents the source model.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
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

### Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.SageMakerMachineLearningModelResourceData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html)

