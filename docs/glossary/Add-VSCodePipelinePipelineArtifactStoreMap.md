# Add-VSCodePipelinePipelineArtifactStoreMap

## SYNOPSIS
Adds an AWS::CodePipeline::Pipeline.ArtifactStoreMap resource property to the template.
A mapping of artifactStore objects and their corresponding regions.
There must be an artifact store for the pipeline region and for each cross-region action within the pipeline.
You can only use either artifactStore or artifactStores, not both.

## SYNTAX

```
Add-VSCodePipelinePipelineArtifactStoreMap [-ArtifactStore] <Object> [-Region] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Pipeline.ArtifactStoreMap resource property to the template.
A mapping of artifactStore objects and their corresponding regions.
There must be an artifact store for the pipeline region and for each cross-region action within the pipeline.
You can only use either artifactStore or artifactStores, not both.

If you create a cross-region action in your pipeline, you must use artifactStores.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ArtifactStore
Represents information about the Amazon S3 bucket where artifacts are stored for the pipeline.

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

