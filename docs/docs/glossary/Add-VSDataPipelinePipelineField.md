# Add-VSDataPipelinePipelineField

## SYNOPSIS
Adds an AWS::DataPipeline::Pipeline.Field resource property to the template.
A key-value pair that describes a property of a PipelineObject.
The value is specified as either a string value (StringValue or a reference to another object (RefValue but not as both.
To view fields for a data pipeline object, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.

## SYNTAX

```
Add-VSDataPipelinePipelineField [-Key] <Object> [[-RefValue] <Object>] [[-StringValue] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DataPipeline::Pipeline.Field resource property to the template.
A key-value pair that describes a property of a PipelineObject.
The value is specified as either a string value (StringValue or a reference to another object (RefValue but not as both.
To view fields for a data pipeline object, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.

## PARAMETERS

### -Key
Specifies the name of a field for a particular object.
To view valid values for a particular field, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-key
PrimitiveType: String
UpdateType: Mutable

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

### -RefValue
A field value that you specify as an identifier of another object in the same pipeline definition.
You can specify the field value as either a string value StringValue or a reference to another object RefValue, but not both.
Required if the key that you are using requires it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-refvalue
PrimitiveType: String
UpdateType: Mutable

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

### -StringValue
A field value that you specify as a string.
To view valid values for a particular field, see Pipeline Object Reference: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-pipeline-objects.html in the *AWS Data Pipeline Developer Guide*.
You can specify the field value as either a string value StringValue or a reference to another object RefValue, but not both.
Required if the key that you are using requires it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-stringvalue
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DataPipeline.Pipeline.Field
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html)

