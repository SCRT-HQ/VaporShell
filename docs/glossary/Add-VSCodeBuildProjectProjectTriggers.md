# Add-VSCodeBuildProjectProjectTriggers

## SYNOPSIS
Adds an AWS::CodeBuild::Project.ProjectTriggers resource property to the template.
ProjectTriggers is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies webhooks that trigger an AWS CodeBuild build.

## SYNTAX

```
Add-VSCodeBuildProjectProjectTriggers [[-FilterGroups] <Object>] [[-Webhook] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.ProjectTriggers resource property to the template.
ProjectTriggers is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies webhooks that trigger an AWS CodeBuild build.

## PARAMETERS

### -FilterGroups
A list of lists of WebhookFilter objects used to determine which webhook events are triggered.
At least one WebhookFilter in the array must specify EVENT as its type.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-filtergroups
ItemType: FilterGroup
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

### -Webhook
Specifies whether or not to begin automatically rebuilding the source code every time a code change is pushed to the repository.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-webhook
PrimitiveType: Boolean
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

### Vaporshell.Resource.CodeBuild.Project.ProjectTriggers
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html)

