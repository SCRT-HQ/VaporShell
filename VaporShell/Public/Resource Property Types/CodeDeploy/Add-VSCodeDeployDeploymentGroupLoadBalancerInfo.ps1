function Add-VSCodeDeployDeploymentGroupLoadBalancerInfo {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo resource property to the template. The LoadBalancerInfo property type specifies information about the load balancer or target group used for an AWS CodeDeploy deployment group. For more information, see  Integrating CodeDeploy with Elastic Load Balancing : https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-elastic-load-balancing.html in the *AWS CodeDeploy User Guide*.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo resource property to the template.
The LoadBalancerInfo property type specifies information about the load balancer or target group used for an AWS CodeDeploy deployment group. For more information, see  Integrating CodeDeploy with Elastic Load Balancing : https://docs.aws.amazon.com/codedeploy/latest/userguide/integrations-aws-elastic-load-balancing.html in the *AWS CodeDeploy User Guide*.

For AWS CloudFormation to use the properties specified in LoadBalancerInfo, the DeploymentStyle.DeploymentOption property must be set to WITH_TRAFFIC_CONTROL. If DeploymentStyle.DeploymentOption is not set to WITH_TRAFFIC_CONTROL, AWS CloudFormation ignores any settings specified in LoadBalancerInfo.

**Note**

AWS CloudFormation supports blue/green deployments on the AWS Lambda compute platform only.

LoadBalancerInfo is a property of the DeploymentGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentgroup.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html

    .PARAMETER ElbInfoList
        An array that contains information about the load balancer to use for load balancing in a deployment. In Elastic Load Balancing, load balancers are used with Classic Load Balancers.
Adding more than one load balancer to the array is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-elbinfolist
        DuplicatesAllowed: False
        ItemType: ELBInfo
        Type: List
        UpdateType: Mutable

    .PARAMETER TargetGroupInfoList
        An array that contains information about the target group to use for load balancing in a deployment. In Elastic Load Balancing, target groups are used with Application Load Balancers.
Adding more than one target group to the array is not supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-targetgroupinfolist
        DuplicatesAllowed: False
        ItemType: TargetGroupInfo
        Type: List
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.LoadBalancerInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodeDeploy.DeploymentGroup.ELBInfo"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ElbInfoList,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CodeDeploy.DeploymentGroup.TargetGroupInfo"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TargetGroupInfoList
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.LoadBalancerInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
