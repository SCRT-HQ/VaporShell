function Add-VSCodeDeployDeploymentGroupOnPremisesTagSet {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSet resource property to the template. The OnPremisesTagSet property type specifies a list containing other lists of on-premises instance tag groups. In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.OnPremisesTagSet resource property to the template.
The OnPremisesTagSet property type specifies a list containing other lists of on-premises instance tag groups. In order for an instance to be included in the deployment group, it must be identified by all the tag groups in the list.

For more information about using tags and tag groups to help manage your Amazon EC2 instances and on-premises instances, see Tagging Instances for Deployment Groups in AWS CodeDeploy: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-tagging.html in the *AWS CodeDeploy User Guide*.

OnPremisesTagSet is a property of the DeploymentGroup : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html

    .PARAMETER OnPremisesTagSetList
        A list that contains other lists of on-premises instance tag groups. For an instance to be included in the deployment group, it must be identified by all of the tag groups in the list.
Duplicates are not allowed.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-onpremisestagset.html#cfn-codedeploy-deploymentgroup-onpremisestagset-onpremisestagsetlist
        DuplicatesAllowed: False
        ItemType: OnPremisesTagSetListObject
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.OnPremisesTagSet')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodeDeploy.DeploymentGroup.OnPremisesTagSetListObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $OnPremisesTagSetList
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.OnPremisesTagSet'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
