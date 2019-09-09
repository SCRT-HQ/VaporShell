# Add-VSSageMakerModelContainerDefinition

## SYNOPSIS
Adds an AWS::SageMaker::Model.ContainerDefinition resource property to the template.
Describes the container, as part of model definition.

## SYNTAX

```
Add-VSSageMakerModelContainerDefinition [[-ContainerHostname] <Object>] [[-Environment] <Object>]
 [[-ModelDataUrl] <Object>] [-Image] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SageMaker::Model.ContainerDefinition resource property to the template.
Describes the container, as part of model definition.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ContainerHostname
This parameter is ignored for models that contain only a PrimaryContainer.
When a ContainerDefinition is part of an inference pipeline, the value of ths parameter uniquely identifies the container for the purposes of logging and metrics.
For information, see Use Logs and Metrics to Monitor an Inference Pipeline: http://docs.aws.amazon.com/sagemaker/latest/dg/inference-pipeline-logs-metrics.html.
If you don't specify a value for this parameter for a ContainerDefinition that is part of an inference pipeline, a unique name is automatically assigned based on the position of the ContainerDefinition in the pipeline.
If you specify a value for the ContainerHostName for any ContainerDefinition that is part of an inference pipeline, you must specify a value for the ContainerHostName parameter of every ContainerDefinition in that pipeline.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-containerhostname
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

### -Environment
The environment variables to set in the Docker container.
Each key and value in the Environment string to string map can have length of up to 1024.
We support up to 16 entries in the map.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-environment
PrimitiveType: Json
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

### -ModelDataUrl
The S3 path where the model artifacts, which result from model training, are stored.
This path must point to a single gzip compressed tar archive .tar.gz suffix.
The S3 path is required for Amazon SageMaker built-in algorithms, but not if you use your own algorithms.
For more information on built-in algorithms, see Common Parameters: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html.
If you provide a value for this parameter, Amazon SageMaker uses AWS Security Token Service to download model artifacts from the S3 path you provide.
AWS STS is activated in your IAM user account by default.
If you previously deactivated AWS STS for a region, you need to reactivate AWS STS for that region.
For more information, see Activating and Deactivating AWS STS in an AWS Region: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html in the *AWS Identity and Access Management User Guide*.
If you use a built-in algorithm to create a model, Amazon SageMaker requires that you provide a S3 path to the model artifacts in ModelDataUrl.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-modeldataurl
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

### -Image
The Amazon EC2 Container Registry Amazon ECR path where inference code is stored.
If you are using your own custom algorithm instead of an algorithm provided by Amazon SageMaker, the inference code must meet Amazon SageMaker requirements.
Amazon SageMaker supports both registry/repository:tag\] and registry/repository@digest\] image path formats.
For more information, see Using Your Own Algorithms with Amazon SageMaker: https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-image
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SageMaker.Model.ContainerDefinition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html)

