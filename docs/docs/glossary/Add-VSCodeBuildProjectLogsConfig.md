# Add-VSCodeBuildProjectLogsConfig

## SYNOPSIS
Adds an AWS::CodeBuild::Project.LogsConfig resource property to the template.
LogsConfig is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies information about logs for a build project.
These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both.

## SYNTAX

```
Add-VSCodeBuildProjectLogsConfig [[-CloudWatchLogs] <Object>] [[-S3Logs] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeBuild::Project.LogsConfig resource property to the template.
LogsConfig is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html resource that specifies information about logs for a build project.
These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both.

## PARAMETERS

### -CloudWatchLogs
Information about Amazon CloudWatch Logs for a build project.
Amazon CloudWatch Logs are enabled by default.

Type: CloudWatchLogsConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-cloudwatchlogs
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

### -S3Logs
Information about logs built to an S3 bucket for a build project.
S3 logs are not enabled by default.

Type: S3LogsConfig
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-s3logs
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

### Vaporshell.Resource.CodeBuild.Project.LogsConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html)

