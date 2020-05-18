# Add-VSSageMakerEndpointVariantProperty

## SYNOPSIS
Adds an AWS::SageMaker::Endpoint.VariantProperty resource property to the template.
Specifies a production variant property type for an Endpoint.

## SYNTAX

```
Add-VSSageMakerEndpointVariantProperty [[-VariantPropertyType] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SageMaker::Endpoint.VariantProperty resource property to the template.
Specifies a production variant property type for an Endpoint.

If you are updating an Endpoint with the RetainAllVariantProperties: https://docs.aws.amazon.com/sagemaker/latest/dg/API_UpdateEndpoint.html#SageMaker-UpdateEndpoint-request-RetainAllVariantProperties option set to true, the VarientProperty objects listed in ExcludeRetainedVariantProperties: https://docs.aws.amazon.com/sagemaker/latest/dg/API_UpdateEndpoint.html#SageMaker-UpdateEndpoint-request-ExcludeRetainedVariantProperties override the existing varient properties of the Endpoint.

## PARAMETERS

### -VariantPropertyType
The type of varient property.
The supported values are:
+ DesiredInstanceCount: Overrides the existing variant instance counts using the InitialInstanceCount: https://docs.aws.amazon.com/sagemaker/latest/dg/API_ProductionVariant.html#SageMaker-Type-ProductionVariant-InitialInstanceCount values in the ProductionVariants: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html#SageMaker-CreateEndpointConfig-request-ProductionVariants.
+ DesiredWeight: Overrides the existing variant weights using the InitialVariantWeight: https://docs.aws.amazon.com/sagemaker/latest/dg/API_ProductionVariant.html#SageMaker-Type-ProductionVariant-InitialVariantWeight values in the ProductionVariants: https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html#SageMaker-CreateEndpointConfig-request-ProductionVariants.
+ DataCaptureConfig: Not currently supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html#cfn-sagemaker-endpoint-variantproperty-variantpropertytype
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SageMaker.Endpoint.VariantProperty
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html)

