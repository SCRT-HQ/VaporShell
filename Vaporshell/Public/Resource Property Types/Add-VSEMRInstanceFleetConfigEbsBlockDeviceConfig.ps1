function Add-VSEMRInstanceFleetConfigEbsBlockDeviceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceFleetConfig.EbsBlockDeviceConfig resource property to the template

    .DESCRIPTION
        Adds an AWS::EMR::InstanceFleetConfig.EbsBlockDeviceConfig resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html

    .PARAMETER VolumeSpecification
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html#cfn-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig-volumespecification    
		Required: True    
		Type: VolumeSpecification    
		UpdateType: Immutable    

    .PARAMETER VolumesPerInstance
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html#cfn-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig-volumesperinstance    
		PrimitiveType: Integer    
		Required: False    
		UpdateType: Immutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EMR.InstanceFleetConfig.EbsBlockDeviceConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $VolumeSpecification,
        [parameter(Mandatory = $false)]
        [Int]
        $VolumesPerInstance
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceFleetConfig.EbsBlockDeviceConfig'
    }
}
