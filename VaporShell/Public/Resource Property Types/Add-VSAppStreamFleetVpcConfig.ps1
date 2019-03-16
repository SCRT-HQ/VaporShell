function Add-VSAppStreamFleetVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppStream::Fleet.VpcConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::AppStream::Fleet.VpcConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html

    .PARAMETER SubnetIds
        PrimitiveItemType: String    
        Type: List    
        Required: False    
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-fleet-vpcconfig.html#cfn-appstream-fleet-vpcconfig-subnetids    
        UpdateType: Mutable    

    .PARAMETER SecurityGroupIds
        PrimitiveItemType: String    
        Type: List    
        Required: False    
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
