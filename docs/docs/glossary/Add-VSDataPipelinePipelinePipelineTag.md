# Add-VSDataPipelinePipelinePipelineTag

## SYNOPSIS
Adds an AWS::DataPipeline::Pipeline.PipelineTag resource property to the template.
A list of arbitrary tags (key-value pairs to associate with the pipeline, which you can use to control permissions.
For more information, see Controlling Access to Pipelines and Resources: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html in the *AWS Data Pipeline Developer Guide*.

## SYNTAX

```
Add-VSDataPipelinePipelinePipelineTag [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DataPipeline::Pipeline.PipelineTag resource property to the template.
A list of arbitrary tags (key-value pairs to associate with the pipeline, which you can use to control permissions.
For more information, see Controlling Access to Pipelines and Resources: https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html in the *AWS Data Pipeline Developer Guide*.

## PARAMETERS

### -Key
The key name of a tag.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html#cfn-datapipeline-pipeline-pipelinetags-key
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

### -Value
The value to associate with the key name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html#cfn-datapipeline-pipeline-pipelinetags-value
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.DataPipeline.Pipeline.PipelineTag
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html)

