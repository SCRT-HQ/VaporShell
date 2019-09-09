# Add-VSCodeBuildProjectGitSubmodulesConfig

## SYNOPSIS
Adds an AWS::CodeBuild::Project.GitSubmodulesConfig resource property to the template.
GitSubmodulesConfig is a property of the AWS CodeBuild Project Source: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html property type that specifies information about the Git submodules configuration for the build project.

## SYNTAX

```
Add-VSCodeBuildProjectGitSubmodulesConfig [-FetchSubmodules] <Boolean> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.GitSubmodulesConfig resource property to the template.
GitSubmodulesConfig is a property of the AWS CodeBuild Project Source: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html property type that specifies information about the Git submodules configuration for the build project.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -FetchSubmodules
Set to true to fetch Git submodules for your AWS CodeBuild build project.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html#cfn-codebuild-project-gitsubmodulesconfig-fetchsubmodules
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.GitSubmodulesConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html)

