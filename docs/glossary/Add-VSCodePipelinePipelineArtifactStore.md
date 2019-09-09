# Add-VSCodePipelinePipelineArtifactStore

## SYNOPSIS
Adds an AWS::CodePipeline::Pipeline.ArtifactStore resource property to the template.
The Amazon S3 bucket where artifacts are stored for the pipeline.

## SYNTAX

```
Add-VSCodePipelinePipelineArtifactStore [[-EncryptionKey] <Object>] [-Location] <Object> [-Type] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Pipeline.ArtifactStore resource property to the template.
The Amazon S3 bucket where artifacts are stored for the pipeline.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -EncryptionKey
The encryption key used to encrypt the data in the artifact store, such as an AWS Key Management Service AWS KMS key.
If this is undefined, the default key for Amazon S3 is used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey
Type: EncryptionKey
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

### -Location
The Amazon S3 bucket used for storing the artifacts for a pipeline.
You can specify the name of an S3 bucket but not a folder within the bucket.
A folder to contain the pipeline artifacts is created for you based on the name of the pipeline.
You can use any Amazon S3 bucket in the same AWS Region as the pipeline to store your pipeline artifacts.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-location
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

### -Type
The type of the artifact store, such as S3.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-type
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

### Vaporshell.Resource.CodePipeline.Pipeline.ArtifactStore
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html)

