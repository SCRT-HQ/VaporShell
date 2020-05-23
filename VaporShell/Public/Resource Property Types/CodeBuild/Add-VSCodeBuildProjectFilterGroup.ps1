function Add-VSCodeBuildProjectFilterGroup {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.FilterGroup resource property to the template. A list of WebhookFilter objects used to determine which webhook events are triggered. At least one WebhookFilter in the list must specify EVENT as its type. The FilterGroups property of the  AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type is a list of FilterGroup objects.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.FilterGroup resource property to the template.
A list of WebhookFilter objects used to determine which webhook events are triggered. At least one WebhookFilter in the list must specify EVENT as its type. The FilterGroups property of the  AWS CodeBuild Project ProjectTriggers: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html property type is a list of FilterGroup objects.

*Required:* No

*Type:* A list of WebhookFilter: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html objects

*Update requires:* No interruption

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-filtergroup.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.FilterGroup')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.FilterGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
