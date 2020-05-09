# Add-VSCloud9EnvironmentEC2Repository

## SYNOPSIS
Adds an AWS::Cloud9::EnvironmentEC2.Repository resource property to the template.
The Repository property type specifies an AWS CodeCommit source code repository to be cloned into an AWS Cloud9 development environment.

## SYNTAX

```
Add-VSCloud9EnvironmentEC2Repository [-PathComponent] <Object> [-RepositoryUrl] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Cloud9::EnvironmentEC2.Repository resource property to the template.
The Repository property type specifies an AWS CodeCommit source code repository to be cloned into an AWS Cloud9 development environment.

## PARAMETERS

### -PathComponent
The path within the development environment's default file system location to clone the AWS CodeCommit repository into.
For example, /REPOSITORY_NAME would clone the repository into the /home/USER_NAME/environment/REPOSITORY_NAME directory in the environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html#cfn-cloud9-environmentec2-repository-pathcomponent
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

### -RepositoryUrl
The clone URL of the AWS CodeCommit repository to be cloned.
For example, for an AWS CodeCommit repository this might be https://git-codecommit.us-east-2.amazonaws.com/v1/repos/REPOSITORY_NAME.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html#cfn-cloud9-environmentec2-repository-repositoryurl
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

### Vaporshell.Resource.Cloud9.EnvironmentEC2.Repository
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html)

