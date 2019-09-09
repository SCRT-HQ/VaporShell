function Add-VSCodeBuildProjectLogsConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.LogsConfig resource property to the template. LogsConfig is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/aws-properties-codebuild-project-source.html resource that specifies information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.LogsConfig resource property to the template.
LogsConfig is a property of the AWS CodeBuild Project: https://docs.aws.amazon.com/aws-properties-codebuild-project-source.html resource that specifies information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html

    .PARAMETER CloudWatchLogs
        Information about Amazon CloudWatch Logs for a build project. Amazon CloudWatch Logs are enabled by default.

        Type: CloudWatchLogsConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-cloudwatchlogs
        UpdateType: Mutable

    .PARAMETER S3Logs
        Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default.

        Type: S3LogsConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-s3logs
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.LogsConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudWatchLogs,
        [parameter(Mandatory = $false)]
        $S3Logs
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.LogsConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
