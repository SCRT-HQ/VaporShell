# Add-VSSageMakerCodeRepositoryGitConfig

## SYNOPSIS
Adds an AWS::SageMaker::CodeRepository.GitConfig resource property to the template.
Specifies configuration details for a Git repository in your AWS account.

## SYNTAX

```
Add-VSSageMakerCodeRepositoryGitConfig [[-SecretArn] <Object>] [[-Branch] <Object>] [-RepositoryUrl] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SageMaker::CodeRepository.GitConfig resource property to the template.
Specifies configuration details for a Git repository in your AWS account.

## PARAMETERS

### -SecretArn
The Amazon Resource Name ARN of the AWS Secrets Manager secret that contains the credentials used to access the git repository.
The secret must have a staging label of AWSCURRENT and must be in the following format:
{"username": UserName, "password": Password}

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-secretarn
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

### -Branch
The default branch for the Git repository.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-branch
PrimitiveType: String
UpdateType: Immutable

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

### -RepositoryUrl
The URL where the Git repository is located.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-repositoryurl
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SageMaker.CodeRepository.GitConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html)

