# Add-VSGreengrassResourceDefinitionVersionS3MachineLearningModelResourceData

## SYNOPSIS
Adds an AWS::Greengrass::ResourceDefinitionVersion.S3MachineLearningModelResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-description"\>\</a\>Settings for an Amazon S3 machine learning resource.
For more information, see Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html in the *AWS IoT Greengrass Developer Guide*.

## SYNTAX

```
Add-VSGreengrassResourceDefinitionVersionS3MachineLearningModelResourceData [-DestinationPath] <Object>
 [-S3Uri] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::ResourceDefinitionVersion.S3MachineLearningModelResourceData resource property to the template.
\<a name="aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-description"\>\</a\>Settings for an Amazon S3 machine learning resource.
For more information, see Perform Machine Learning Inference: https://docs.aws.amazon.com/greengrass/latest/developerguide/ml-inference.html in the *AWS IoT Greengrass Developer Guide*.

\<a name="aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-inheritance"\>\</a\> In an AWS CloudFormation template, S3MachineLearningModelResourceData can be used in the https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DestinationPath
The absolute local path of the resource inside the Lambda environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-destinationpath
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

### -S3Uri
The URI of the source model in an Amazon S3 bucket.
The model package must be in tar.gz or .zip format.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-s3uri
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.ResourceDefinitionVersion.S3MachineLearningModelResourceData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html)

