# Add-VSCodeBuildProjectSourceAuth

## SYNOPSIS
Adds an AWS::CodeBuild::Project.SourceAuth resource property to the template.
SourceAuth is a property of the AWS CodeBuild Project Source : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html property type that specifies authorization settings for AWS CodeBuild to access the source code to be built.

## SYNTAX

```
Add-VSCodeBuildProjectSourceAuth [-Type] <Object> [[-Resource] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.SourceAuth resource property to the template.
SourceAuth is a property of the AWS CodeBuild Project Source : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html property type that specifies authorization settings for AWS CodeBuild to access the source code to be built.

SourceAuth is for use by the CodeBuild console only.
Do not get or set it directly.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The authorization type to use.
The only valid value is OAUTH, which represents the OAuth authorization type.
This data type is used by the AWS CodeBuild console only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type
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

### -Resource
The resource value that applies to the specified authorization type.
This data type is used by the AWS CodeBuild console only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource
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

### Vaporshell.Resource.CodeBuild.Project.SourceAuth
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html)

