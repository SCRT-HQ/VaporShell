# Add-VSCodeBuildProjectFilterGroup

## SYNOPSIS
Adds an AWS::CodeBuild::Project.FilterGroup resource property to the template.
A list of WebhookFilter objects used to determine which webhook events are triggered.
At least one WebhookFilter in the list must specify EVENT as its type.
The FilterGroups property of the  AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type is a list of FilterGroup objects.

## SYNTAX

```
Add-VSCodeBuildProjectFilterGroup [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.FilterGroup resource property to the template.
A list of WebhookFilter objects used to determine which webhook events are triggered.
At least one WebhookFilter in the list must specify EVENT as its type.
The FilterGroups property of the  AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type is a list of FilterGroup objects.

*Required:* No

*Type:* A list of of WebhookFilter: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html objects

*Update requires:* No interruption

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.FilterGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-filtergroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-filtergroup.html)

