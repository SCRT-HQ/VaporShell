function Add-VSEMRInstanceFleetConfigInstanceFleetProvisioningSpecifications {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications resource property to the template. **Note**

    .DESCRIPTION
        Adds an AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications resource property to the template.
**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

InstanceTypeConfig is a sub-property of InstanceFleetConfig. InstanceTypeConfig determines the EC2 instances that Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities. There can be a maximum of 5 instance type configurations in a fleet.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html

    .PARAMETER SpotSpecification
        The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-spotspecification
        Type: SpotProvisioningSpecification
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecifications')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecifications'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
