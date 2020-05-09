# Add-VSCodeBuildProjectRegistryCredential

## SYNOPSIS
Adds an AWS::CodeBuild::Project.RegistryCredential resource property to the template.
RegistryCredential is a property of the AWS CodeBuild Project Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html property type that specifies information about credentials that provide access to a private Docker registry.
When this is set:

## SYNTAX

```
Add-VSCodeBuildProjectRegistryCredential [-Credential] <Object> [-CredentialProvider] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.RegistryCredential resource property to the template.
RegistryCredential is a property of the AWS CodeBuild Project Environment : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html property type that specifies information about credentials that provide access to a private Docker registry.
When this is set:

+  imagePullCredentialsType must be set to SERVICE_ROLE.

+  images cannot be curated or an Amazon ECR image.

For more information, see Private Registry with AWS Secrets Manager Sample for AWS CodeBuild: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html.

## PARAMETERS

### -Credential
The Amazon Resource Name ARN or name of credentials created using AWS Secrets Manager.
The credential can use the name of the credentials only if they exist in your current AWS Region.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credential
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

### -CredentialProvider
The service that created the credentials to access a private Docker registry.
The valid value, SECRETS_MANAGER, is for AWS Secrets Manager.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credentialprovider
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

### Vaporshell.Resource.CodeBuild.Project.RegistryCredential
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html)

