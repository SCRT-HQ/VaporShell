# Add-VSCodeBuildProjectWebhookFilter

## SYNOPSIS
Adds an AWS::CodeBuild::Project.WebhookFilter resource property to the template.
WebhookFilter is a structure of the FilterGroups property on the AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type that specifies which webhooks trigger an AWS CodeBuild build.

## SYNTAX

```
Add-VSCodeBuildProjectWebhookFilter [-Pattern] <Object> [-Type] <Object> [[-ExcludeMatchedPattern] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.WebhookFilter resource property to the template.
WebhookFilter is a structure of the FilterGroups property on the AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type that specifies which webhooks trigger an AWS CodeBuild build.

## PARAMETERS

### -Pattern
For a WebHookFilter that uses EVENT type, a comma-separated string that specifies one or more events.
For example, the webhook filter PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED allows all push, pull request created, and pull request updated events to trigger a build.
For a WebHookFilter that uses any of the other filter types, a regular expression pattern.
For example, a WebHookFilter that uses HEAD_REF for its type and the pattern ^refs/heads/ triggers a build when the head reference is a branch with a reference name refs/heads/branch-name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-pattern
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

### -Type
The type of webhook filter.
There are five webhook filter types: EVENT, ACTOR_ACCOUNT_ID, HEAD_REF, BASE_REF, and FILE_PATH.
EVENT
A webhook event triggers a build when the provided pattern matches one of five event types: PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED, PULL_REQUEST_REOPENED, and PULL_REQUEST_MERGED.
The EVENT patterns are specified as a comma-separated string.
For example, PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED filters all push, pull request created, and pull request updated events.
The PULL_REQUEST_REOPENED works with GitHub and GitHub Enterprise only.
ACTOR_ACCOUNT_ID
A webhook event triggers a build when a GitHub, GitHub Enterprise, or Bitbucket account ID matches the regular expression pattern.
HEAD_REF
A webhook event triggers a build when the head reference matches the regular expression pattern.
For example, refs/heads/branch-name and refs/tags/tag-name.
Works with GitHub and GitHub Enterprise push, GitHub and GitHub Enterprise pull request, Bitbucket push, and Bitbucket pull request events.
BASE_REF
A webhook event triggers a build when the base reference matches the regular expression pattern.
For example, refs/heads/branch-name.
Works with pull request events only.
FILE_PATH
A webhook triggers a build when the path of a changed file matches the regular expression pattern.
Works with GitHub and GitHub Enterprise push events only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-type
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

### -ExcludeMatchedPattern
Used to indicate that the pattern determines which webhook events do not trigger a build.
If true, then a webhook event that does not match the pattern triggers a build.
If false, then a webhook event that matches the pattern triggers a build.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-excludematchedpattern
PrimitiveType: Boolean
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeBuild.Project.WebhookFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html)

