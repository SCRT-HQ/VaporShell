# Add-VSCodeBuildProjectEnvironmentVariable

## SYNOPSIS
Adds an AWS::CodeBuild::Project.EnvironmentVariable resource property to the template.
EnvironmentVariable is a property of the AWS CodeBuild Project Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html property type that specifies the name and value of an environment variable for an AWS CodeBuild project environment.
When you use the environment to run a build, these variables are available for your builds to use.
EnvironmentVariable contains a list of EnvironmentVariable property types.

## SYNTAX

```
Add-VSCodeBuildProjectEnvironmentVariable [[-Type] <Object>] [-Value] <Object> [-Name] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.EnvironmentVariable resource property to the template.
EnvironmentVariable is a property of the AWS CodeBuild Project Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html property type that specifies the name and value of an environment variable for an AWS CodeBuild project environment.
When you use the environment to run a build, these variables are available for your builds to use.
EnvironmentVariable contains a list of EnvironmentVariable property types.

## PARAMETERS

### -Type
The type of environment variable.
Valid values include:
+  PARAMETER_STORE: An environment variable stored in Amazon EC2 Systems Manager Parameter Store.
To learn how to specify a parameter store environment variable, see  parameter store reference-key in the buildspec file: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#parameter-store-build-spec.
+  PLAINTEXT: An environment variable in plain text format.
This is the default value.
+  SECRETS_MANAGER: An environment variable stored in AWS Secrets Manager.
To learn how to specify a secrets manager environment variable, see  secrets manager reference-key in the buildspec file: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#secrets-manager-build-spec.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-type
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

### -Value
The value of the environment variable.
We strongly discourage the use of PLAINTEXT environment variables to store sensitive values, especially AWS secret key IDs and secret access keys.
PLAINTEXT environment variables can be displayed in plain text using the AWS CodeBuild console and the AWS Command Line Interface AWS CLI.
For sensitive values, we recommend you use an environment variable of type PARAMETER_STORE or SECRETS_MANAGER.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
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
The name or key of the environment variable.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
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

### Vaporshell.Resource.CodeBuild.Project.EnvironmentVariable
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html)

