# Add-VSDataPipelinePipelinePipelineObject

## SYNOPSIS
Adds an AWS::DataPipeline::Pipeline.PipelineObject resource property to the template.
PipelineObject is property of the AWS::DataPipeline::Pipeline resource that contains information about a pipeline object.
This can be a logical, physical, or physical attempt pipeline object.
The complete set of components of a pipeline defines the pipeline.

## SYNTAX

```
Add-VSDataPipelinePipelinePipelineObject [-Fields] <Object> [-Id] <Object> [-Name] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DataPipeline::Pipeline.PipelineObject resource property to the template.
PipelineObject is property of the AWS::DataPipeline::Pipeline resource that contains information about a pipeline object.
This can be a logical, physical, or physical attempt pipeline object.
The complete set of components of a pipeline defines the pipeline.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Fields
Key-value pairs that define the properties of the object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-fields
DuplicatesAllowed: True
ItemType: Field
Type: List
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

### -Id
The ID of the object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-id
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

### -Name
The name of the object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-name
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.DataPipeline.Pipeline.PipelineObject
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html)

