# Add-VSCodePipelinePipelineEncryptionKey

## SYNOPSIS
Adds an AWS::CodePipeline::Pipeline.EncryptionKey resource property to the template.
Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS key.

## SYNTAX

```
Add-VSCodePipelinePipelineEncryptionKey [-Id] <Object> [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodePipeline::Pipeline.EncryptionKey resource property to the template.
Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS key.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Id
The ID used to identify the key.
For an AWS KMS key, this is the key ID or key ARN.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-id
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

### -Type
The type of encryption key, such as an AWS Key Management Service AWS KMS key.
When creating or updating a pipeline, the value must be set to 'KMS'.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-type
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

### Vaporshell.Resource.CodePipeline.Pipeline.EncryptionKey
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html)

