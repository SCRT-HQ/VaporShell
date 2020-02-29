function Add-VSCodeDeployDeploymentGroupEC2TagSetListObject {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject resource property to the template. The EC2TagSet property type specifies information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same template as EC2TagFilters.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSetListObject resource property to the template.
The EC2TagSet property type specifies information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. Cannot be used in the same template as EC2TagFilters.

For more information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html in the *AWS CodeDeploy User Guide*.

EC2TagSet is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html

    .PARAMETER Ec2TagGroup
        A list that contains other lists of EC2 instance tag groups. For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagsetlistobject.html#cfn-codedeploy-deploymentgroup-ec2tagsetlistobject-ec2taggroup
        DuplicatesAllowed: False
        ItemType: EC2TagFilter
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSetListObject')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagFilter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Ec2TagGroup
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSetListObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
