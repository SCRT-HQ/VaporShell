function Add-VSCodeDeployDeploymentGroupLoadBalancerInfo {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo resource property to the template

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.LoadBalancerInfo resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html

    .PARAMETER ElbInfoList
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-elbinfolist    
		DuplicatesAllowed: False    
		ItemType: ELBInfo    
		Required: False    
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
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $ElbInfoList
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.LoadBalancerInfo'
    }
}
