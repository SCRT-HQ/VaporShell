function Add-VSCodeDeployDeploymentConfigMinimumHealthyHosts {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts resource property to the template. MinimumHealthyHosts is a property of the DeploymentConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html resource that defines how many instances must remain healthy during an AWS CodeDeploy deployment.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts resource property to the template.
MinimumHealthyHosts is a property of the DeploymentConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html resource that defines how many instances must remain healthy during an AWS CodeDeploy deployment.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html

    .PARAMETER Type
        The minimum healthy instance type:
+ HOST_COUNT: The minimum number of healthy instance as an absolute value.
+ FLEET_PERCENT: The minimum number of healthy instance as a percentage of the total number of instance in the deployment.
In an example of nine instance, if a HOST_COUNT of six is specified, deploy to up to three instances at a time. The deployment is successful if six or more instances are deployed to successfully. Otherwise, the deployment fails. If a FLEET_PERCENT of 40 is specified, deploy to up to five instance at a time. The deployment is successful if four or more instance are deployed to successfully. Otherwise, the deployment fails.
In a call to GetDeploymentConfig, CodeDeployDefault.OneAtATime returns a minimum healthy instance type of MOST_CONCURRENCY and a value of 1. This means a deployment to only one instance at a time. You cannot set the type to MOST_CONCURRENCY, only to HOST_COUNT or FLEET_PERCENT. In addition, with CodeDeployDefault.OneAtATime, AWS CodeDeploy attempts to ensure that all instances but one are kept in a healthy state during the deployment. Although this allows one instance at a time to be taken offline for a new deployment, it also means that if the deployment to the last instance fails, the overall deployment is still successful.
For more information, see AWS CodeDeploy Instance Health: https://docs.aws.amazon.com/codedeploy/latest/userguide/instances-health.html in the *AWS CodeDeploy User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Value
        The minimum healthy instance value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentConfig.MinimumHealthyHosts')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentConfig.MinimumHealthyHosts'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
