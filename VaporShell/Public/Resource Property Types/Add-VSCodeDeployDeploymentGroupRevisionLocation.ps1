function Add-VSCodeDeployDeploymentGroupRevisionLocation {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.RevisionLocation resource property to the template. RevisionLocation is a property that defines the location of the CodeDeploy application revision to deploy.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.RevisionLocation resource property to the template.
RevisionLocation is a property that defines the location of the CodeDeploy application revision to deploy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html

    .PARAMETER GitHubLocation
        Information about the location of application artifacts stored in GitHub.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation
        Type: GitHubLocation
        UpdateType: Mutable

    .PARAMETER RevisionType
        The type of application revision:
+ S3: An application revision stored in Amazon S3.
+ GitHub: An application revision stored in GitHub EC2/On-premises deployments only.
+ String: A YAML-formatted or JSON-formatted string AWS Lambda deployments only.
+ AppSpecContent: An AppSpecContent object that contains the contents of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML stored as a RawString.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-revisiontype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER S3Location
        Information about the location of a revision stored in Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location
        Type: S3Location
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.RevisionLocation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GitHubLocation,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RevisionType,
        [parameter(Mandatory = $false)]
        $S3Location
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.RevisionLocation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
