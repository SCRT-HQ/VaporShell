# Add-VSCodeBuildProjectProjectSourceVersion

## SYNOPSIS
Adds an AWS::CodeBuild::Project.ProjectSourceVersion resource property to the template.
A source identifier and its corresponding version.

## SYNTAX

```
Add-VSCodeBuildProjectProjectSourceVersion [-SourceIdentifier] <Object> [[-SourceVersion] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.ProjectSourceVersion resource property to the template.
A source identifier and its corresponding version.

## PARAMETERS

### -SourceIdentifier
An identifier for a source in the build project.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceidentifier
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

### -SourceVersion
The source version for the corresponding source identifier.
If specified, must be one of:
+ For AWS CodeCommit: the commit ID, branch, or Git tag to use.
+ For GitHub: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format pr/pull-request-ID for example, pr/25.
If a branch name is specified, the branch's HEAD commit ID is used.
If not specified, the default branch's HEAD commit ID is used.
+ For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build.
If a branch name is specified, the branch's HEAD commit ID is used.
If not specified, the default branch's HEAD commit ID is used.
+ For Amazon Simple Storage Service Amazon S3: the version ID of the object that represents the build input ZIP file to use.
For more information, see Source Version Sample with CodeBuild: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html in the *AWS CodeBuild User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceversion
PrimitiveType: String
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.ProjectSourceVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html)

