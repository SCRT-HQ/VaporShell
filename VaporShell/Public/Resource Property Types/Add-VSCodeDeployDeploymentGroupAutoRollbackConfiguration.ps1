function Add-VSCodeDeployDeploymentGroupAutoRollbackConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration resource property to the template. The AutoRollbackConfiguration property type configures automatic rollback for an AWS CodeDeploy deployment group when a deployment is not completed successfully. For more information, see Automatic Rollbacks: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployments-rollback-and-redeploy.html#deployments-rollback-and-redeploy-automatic-rollbacks in the *AWS CodeDeploy User Guide*.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.AutoRollbackConfiguration resource property to the template.
The AutoRollbackConfiguration property type configures automatic rollback for an AWS CodeDeploy deployment group when a deployment is not completed successfully. For more information, see Automatic Rollbacks: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployments-rollback-and-redeploy.html#deployments-rollback-and-redeploy-automatic-rollbacks in the *AWS CodeDeploy User Guide*.

AutoRollbackConfiguration is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html

    .PARAMETER Enabled
        Indicates whether a defined automatic rollback configuration is currently enabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-enabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Events
        The event type or types that trigger a rollback. Valid values are DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, or DEPLOYMENT_STOP_ON_REQUEST.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-autorollbackconfiguration.html#cfn-codedeploy-deploymentgroup-autorollbackconfiguration-events
        DuplicatesAllowed: False
        PrimitiveItemType: String
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.AutoRollbackConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $Enabled,
        [parameter(Mandatory = $false)]
        $Events
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.AutoRollbackConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
