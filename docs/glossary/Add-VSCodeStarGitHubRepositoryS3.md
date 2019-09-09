# Add-VSCodeStarGitHubRepositoryS3

## SYNOPSIS
Adds an AWS::CodeStar::GitHubRepository.S3 resource property to the template.
The S3 property type specifies information about the Amazon S3 bucket that contains the code to be committed to the new repository.

## SYNTAX

```
Add-VSCodeStarGitHubRepositoryS3 [[-ObjectVersion] <Object>] [-Bucket] <Object> [-Key] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeStar::GitHubRepository.S3 resource property to the template.
The S3 property type specifies information about the Amazon S3 bucket that contains the code to be committed to the new repository.

S3 is a property of the AWS::CodeStar::GitHubRepository resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ObjectVersion
The object version of the ZIP file, if versioning is enabled for the Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-objectversion
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

### -Bucket
The name of the Amazon S3 bucket that contains the ZIP file with the content to be committed to the new repository.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-bucket
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

### -Key
The S3 object key or file name for the ZIP file.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-key
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

### Vaporshell.Resource.CodeStar.GitHubRepository.S3
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html)

