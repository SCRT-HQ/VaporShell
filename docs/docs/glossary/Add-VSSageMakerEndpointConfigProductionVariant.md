# Add-VSSageMakerEndpointConfigProductionVariant

## SYNOPSIS
Adds an AWS::SageMaker::EndpointConfig.ProductionVariant resource property to the template.
Specifies a model that you want to host and the resources to deploy for hosting it.
If you are deploying multiple models, tell Amazon SageMaker how to distribute traffic among the models by specifying the InitialVariantWeight objects.

## SYNTAX

```
Add-VSSageMakerEndpointConfigProductionVariant [-ModelName] <Object> [-VariantName] <Object>
 [-InitialInstanceCount] <Object> [-InstanceType] <Object> [[-AcceleratorType] <Object>]
 [-InitialVariantWeight] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SageMaker::EndpointConfig.ProductionVariant resource property to the template.
Specifies a model that you want to host and the resources to deploy for hosting it.
If you are deploying multiple models, tell Amazon SageMaker how to distribute traffic among the models by specifying the InitialVariantWeight objects.

## PARAMETERS

### -ModelName
The name of the model that you want to host.
This is the name that you specified when creating the model.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-modelname
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

### -VariantName
The name of the production variant.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-variantname
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

### -InitialInstanceCount
Number of instances to launch initially.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-initialinstancecount
PrimitiveType: Integer
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

### -InstanceType
The ML compute instance type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-instancetype
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

### -AcceleratorType
The size of the Elastic Inference EI instance to use for the production variant.
EI instances provide on-demand GPU computing for inference.
For more information, see Using Elastic Inference in Amazon SageMaker: https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html.
For more information, see Using Elastic Inference in Amazon SageMaker: https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-acceleratortype
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

### -InitialVariantWeight
Determines initial traffic distribution among all of the models that you specify in the endpoint configuration.
The traffic to a production variant is determined by the ratio of the VariantWeight to the sum of all VariantWeight values across all ProductionVariants.
If unspecified, it defaults to 1.0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-initialvariantweight
PrimitiveType: Double
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SageMaker.EndpointConfig.ProductionVariant
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html)

