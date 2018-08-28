function Add-VSEKSClusterResourcesVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Cluster.ResourcesVpcConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::EKS::Cluster.ResourcesVpcConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html

    .PARAMETER SecurityGroupIds
		PrimitiveItemType: String    
		Type: List    
		Required: False    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-securitygroupids    
		UpdateType: Mutable    

    .PARAMETER SubnetIds
		PrimitiveItemType: String    
		Type: List    
		Required: True    
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-subnetids    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EKS.Cluster.ResourcesVpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SecurityGroupIds,
        [parameter(Mandatory = $true)]
        $SubnetIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Cluster.ResourcesVpcConfig'
    }
}
