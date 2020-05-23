function Add-VSAppStreamFleetVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppStream::Fleet.VpcConfig resource property to the template. The VPC configuration information for the fleet.

    .DESCRIPTION
        Adds an AWS::AppStream::Fleet.VpcConfig resource property to the template.
The VPC configuration information for the fleet.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html

    .PARAMETER SubnetIds
        The identifiers of the subnets to which a network interface is attached from the fleet instance. Fleet instances can use one or two subnets.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-subnetids
        UpdateType: Mutable

    .PARAMETER SecurityGroupIds
        The identifiers of the security groups for the fleet.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-securitygroupids
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppStream.Fleet.VpcConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SubnetIds,
        [parameter(Mandatory = $false)]
        $SecurityGroupIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppStream.Fleet.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
