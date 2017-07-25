function Add-VSEMRClusterInstanceFleetProvisioningSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html

    .PARAMETER SpotSpecification
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-cluster-instancefleetprovisioningspecifications-spotspecification    
		Required: True    
		Type: SpotProvisioningSpecification    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.Cluster.InstanceFleetProvisioningSpecifications')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SpotSpecification
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.InstanceFleetProvisioningSpecifications'
    }
}
