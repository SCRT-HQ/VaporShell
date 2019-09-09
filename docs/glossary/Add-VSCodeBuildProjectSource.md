# Add-VSCodeBuildProjectSource

## SYNOPSIS
Adds an AWS::CodeBuild::Project.Source resource property to the template.
Source is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the source code settings for the project, such as the source code's repository type and location.

## SYNTAX

```
Add-VSCodeBuildProjectSource [-Type] <Object> [[-ReportBuildStatus] <Boolean>] [[-Auth] <Object>]
 [[-SourceIdentifier] <Object>] [[-BuildSpec] <Object>] [[-GitCloneDepth] <Int32>]
 [[-GitSubmodulesConfig] <Object>] [[-InsecureSsl] <Boolean>] [[-Location] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.Source resource property to the template.
Source is a property of the AWS::CodeBuild::Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies the source code settings for the project, such as the source code's repository type and location.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The type of repository that contains the source code to be built.
Valid values include:
+  BITBUCKET: The source code is in a Bitbucket repository.
+  CODECOMMIT: The source code is in an AWS CodeCommit repository.
+  CODEPIPELINE: The source code settings are specified in the source action of a pipeline in AWS CodePipeline.
+  GITHUB: The source code is in a GitHub repository.
+  NO_SOURCE: The project does not have input source code.
+  S3: The source code is in an Amazon Simple Storage Service Amazon S3 input bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type
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

### -ReportBuildStatus
Set to true to report the status of a build's start and finish to your source provider.
This option is valid only when your source provider is GitHub, GitHub Enterprise, or Bitbucket.
If this is set and you use a different source provider, an invalidInputException is thrown.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-reportbuildstatus
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Auth
Information about the authorization settings for AWS CodeBuild to access the source code to be built.
This information is for the AWS CodeBuild console's use only.
Your code should not get or set Auth directly.

Type: SourceAuth
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceIdentifier
An identifier for this project source.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-sourceidentifier
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BuildSpec
The build specification for the project.
If this value is not provided, then the source code must contain a buildspec file named buildspec.yml at the root level.
If this value is provided, it can be either a single string containing the entire build specification, or the path to an alternate buildspec file relative to the value of the built-in environment variable CODEBUILD_SRC_DIR.
The alternate buildspec file can have a name other than buildspec.yml, for example myspec.yml or build_spec_qa.yml or similar.
For more information, see the Build Spec Reference: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-example in the *AWS CodeBuild User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GitCloneDepth
The depth of history to download.
Minimum value is 0.
If this value is 0, greater than 25, or not provided, then the full history is downloaded with each build project.
If your source type is Amazon S3, this value is not supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitclonedepth
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -GitSubmodulesConfig
Information about the Git submodules configuration for the build project.

Type: GitSubmodulesConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitsubmodulesconfig
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InsecureSsl
This is used with GitHub Enterprise only.
Set to true to ignore SSL warnings while connecting to your GitHub Enterprise project repository.
The default value is false.
InsecureSsl should be used for testing purposes only.
It should not be used in a production environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-insecuressl
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Information about the location of the source code to be built.
Valid values include:
+ For source code settings that are specified in the source action of a pipeline in AWS CodePipeline, location should not be specified.
If it is specified, AWS CodePipeline ignores it.
This is because AWS CodePipeline uses the settings in a pipeline's source action instead of this value.
+ For source code in an AWS CodeCommit repository, the HTTPS clone URL to the repository that contains the source code and the build spec for example, https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name .
+ For source code in an Amazon Simple Storage Service Amazon S3 input bucket, one of the following.
+  The path to the ZIP file that contains the source code for example,  bucket-name/path/to/object-name.zip.
+  The path to the folder that contains the source code for example,  bucket-name/path/to/source-code/folder/.
+ For source code in a GitHub repository, the HTTPS clone URL to the repository that contains the source and the build spec.
You must connect your AWS account to your GitHub account.
Use the AWS CodeBuild console to start creating a build project.
When you use the console to connect or reconnect with GitHub, on the GitHub **Authorize application** page, for **Organization access**, choose **Request access** next to each repository you want to allow AWS CodeBuild to have access to, and then choose **Authorize application**.
After you have connected to your GitHub account, you do not need to finish creating the build project.
You can leave the AWS CodeBuild console.
To instruct AWS CodeBuild to use this connection, in the source object, set the auth object's type value to OAUTH.
+ For source code in a Bitbucket repository, the HTTPS clone URL to the repository that contains the source and the build spec.
You must connect your AWS account to your Bitbucket account.
Use the AWS CodeBuild console to start creating a build project.
When you use the console to connect or reconnect with Bitbucket, on the Bitbucket **Confirm access to your account** page, choose **Grant access**.
After you have connected to your Bitbucket account, you do not need to finish creating the build project.
You can leave the AWS CodeBuild console.
To instruct AWS CodeBuild to use this connection, in the source object, set the auth object's type value to OAUTH.
If you specify CODEPIPELINE for the Type property, don't specify this property.
For all of the other types, you must specify Location.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.Source
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html)

