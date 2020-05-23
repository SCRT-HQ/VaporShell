function Add-VSCodeDeployDeploymentGroupEC2TagSet {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSet resource property to the template. The EC2TagSet property type specifies information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. EC2TagSet cannot be used in the same template as EC2TagFilter.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.EC2TagSet resource property to the template.
The EC2TagSet property type specifies information about groups of tags applied to EC2 instances. The deployment group includes only EC2 instances identified by all the tag groups. EC2TagSet cannot be used in the same template as EC2TagFilter.

For information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html

    .PARAMETER Ec2TagSetList
        The EC2 tags that are already applied to EC2 instances that you want to include in the deployment group. CodeDeploy includes all EC2 instances identified by any of the tags you specify in this deployment group.
Duplicates are not allowed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ec2tagset.html#cfn-codedeploy-deploymentgroup-ec2tagset-ec2tagsetlist
        DuplicatesAllowed: False
        ItemType: EC2TagSetListObject
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSet')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSetListObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Ec2TagSetList
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.EC2TagSet'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
