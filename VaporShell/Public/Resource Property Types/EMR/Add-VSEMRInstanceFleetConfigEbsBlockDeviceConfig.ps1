function Add-VSEMRInstanceFleetConfigEbsBlockDeviceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::EMR::InstanceFleetConfig.EbsBlockDeviceConfig resource property to the template. EbsBlockDeviceConfig is a subproperty of the EbsConfiguration property type. EbsBlockDeviceConfig defines the number and type of EBS volumes to associate with all EC2 instances in an EMR cluster.

    .DESCRIPTION
        Adds an AWS::EMR::InstanceFleetConfig.EbsBlockDeviceConfig resource property to the template.
EbsBlockDeviceConfig is a subproperty of the EbsConfiguration property type. EbsBlockDeviceConfig defines the number and type of EBS volumes to associate with all EC2 instances in an EMR cluster.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html

    .PARAMETER VolumeSpecification
        EBS volume specifications such as volume type, IOPS, and size GiB that will be requested for the EBS volume attached to an EC2 instance in the cluster.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html#cfn-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig-volumespecification
        Type: VolumeSpecification
        UpdateType: Immutable

    .PARAMETER VolumesPerInstance
        Number of EBS volumes with a specific volume configuration that will be associated with every instance in the instance group

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html#cfn-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig-volumesperinstance
        PrimitiveType: Integer
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
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VolumesPerInstance
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EMR.InstanceFleetConfig.EbsBlockDeviceConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
