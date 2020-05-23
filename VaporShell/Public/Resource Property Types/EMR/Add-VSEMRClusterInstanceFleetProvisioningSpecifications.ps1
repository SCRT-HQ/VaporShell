function Add-VSEMRClusterInstanceFleetProvisioningSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template. InstanceFleetProvisioningSpecification is a subproperty of InstanceFleetConfig. InstanceFleetProvisioningSpecification defines the launch specification for Spot instances in an instance fleet, which determines the defined duration and provisioning timeout behavior for Spot instances.

    .DESCRIPTION
        Adds an AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications resource property to the template.
InstanceFleetProvisioningSpecification is a subproperty of InstanceFleetConfig. InstanceFleetProvisioningSpecification defines the launch specification for Spot instances in an instance fleet, which determines the defined duration and provisioning timeout behavior for Spot instances.

**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html

    .PARAMETER SpotSpecification
        The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-cluster-instancefleetprovisioningspecifications-spotspecification
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.Cluster.InstanceFleetProvisioningSpecifications'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
