# Add-VSGreengrassResourceDefinitionVersionResourceDataContainer

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinitionVersion.ResourceDataContainer resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer-description"\>\</a\>A container for resource data, which defines the resource type.
The container takes only one of the following supported resource data types: LocalDeviceResourceData, LocalVolumeResourceData, SageMakerMachineLearningModelResourceData, S3MachineLearningModelResourceData, or SecretsManagerSecretResourceData.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionVersionResourceDataContainer [[-SecretsManagerSecretResourceData] <Object>]
 [[-SageMakerMachineLearningModelResourceData] <Object>] [[-LocalVolumeResourceData] <Object>]
 [[-LocalDeviceResourceData] <Object>] [[-S3MachineLearningModelResourceData] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinitionVersion.ResourceDataContainer resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer-description"\>\</a\>A container for resource data, which defines the resource type.
The container takes only one of the following supported resource data types: LocalDeviceResourceData, LocalVolumeResourceData, SageMakerMachineLearningModelResourceData, S3MachineLearningModelResourceData, or SecretsManagerSecretResourceData.

**Note**

Only one resource type can be defined for a ResourceDataContainer instance.

\<a name="aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer-inheritance"\>\</a\> In an AWS CloudFormation template, ResourceDataContainer is a property of the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html property type.

## PARAMETERS

### -SecretsManagerSecretResourceData
Settings for a secret resource.

Type: SecretsManagerSecretResourceData
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-secretsmanagersecretresourcedata
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

### -SageMakerMachineLearningModelResourceData
Settings for a machine learning resource saved as an Amazon SageMaker training job.

Type: SageMakerMachineLearningModelResourceData
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-sagemakermachinelearningmodelresourcedata
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

### -LocalVolumeResourceData
Settings for a local volume resource.

Type: LocalVolumeResourceData
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-localvolumeresourcedata
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

### -LocalDeviceResourceData
Settings for a local device resource.

Type: LocalDeviceResourceData
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-localdeviceresourcedata
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

### -S3MachineLearningModelResourceData
Settings for a machine learning resource stored in Amazon S3.

Type: S3MachineLearningModelResourceData
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-s3machinelearningmodelresourcedata
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.ResourceDataContainer
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html)

