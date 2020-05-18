# Add-VSCodePipelinePipelineArtifactStoreMap

## SYNOPSIS
Adds an AWS::CodePipeline::Pipeline.ArtifactStoreMap resource property to the template.
A mapping of artifactStore objects and their corresponding AWS Regions.
There must be an artifact store for the pipeline Region and for each cross-region action in the pipeline.

## SYNTAX

```
Add-VSCodePipelinePipelineArtifactStoreMap [-ArtifactStore] <Object> [-Region] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Pipeline.ArtifactStoreMap resource property to the template.
A mapping of artifactStore objects and their corresponding AWS Regions.
There must be an artifact store for the pipeline Region and for each cross-region action in the pipeline.

**Note**

You must include either artifactStore or artifactStores in your pipeline, but you cannot use both.
If you create a cross-region action in your pipeline, you must use artifactStores.

## PARAMETERS

### -ArtifactStore
Represents information about the S3 bucket where artifacts are stored for the pipeline.
You must include either artifactStore or artifactStores in your pipeline, but you cannot use both.
If you create a cross-region action in your pipeline, you must use artifactStores.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-artifactstore
Type: ArtifactStore
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

### -Region
The action declaration's AWS Region, such as us-east-1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-region
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

### Vaporshell.Resource.CodePipeline.Pipeline.ArtifactStoreMap
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html)

