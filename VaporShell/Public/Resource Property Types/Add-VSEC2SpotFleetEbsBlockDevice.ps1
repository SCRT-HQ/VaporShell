function Add-VSEC2SpotFleetEbsBlockDevice {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::SpotFleet.EbsBlockDevice resource property to the template. Describes a block device for an EBS volume.

    .DESCRIPTION
        Adds an AWS::EC2::SpotFleet.EbsBlockDevice resource property to the template.
Describes a block device for an EBS volume.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html

    .PARAMETER DeleteOnTermination
        Indicates whether the EBS volume is deleted on instance termination. For more information, see Preserving Amazon EBS Volumes on Instance Termination: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination in the Amazon Elastic Compute Cloud User Guide.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-deleteontermination
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Encrypted
        Indicates whether the encryption state of an EBS volume is changed while being restored from a backing snapshot. The effect of setting the encryption state to true depends on the volume origin new or from a snapshot, starting encryption state, ownership, and whether encryption by default is enabled. For more information, see Amazon EBS Encryption: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-parameters in the *Amazon Elastic Compute Cloud User Guide*.
In no case can you remove encryption from an encrypted volume.
Encrypted volumes can only be attached to instances that support Amazon EBS encryption. For more information, see Supported Instance Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances.
This parameter is not returned by DescribeImageAttribute: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImageAttribute.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-encrypted
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER Iops
        The number of I/O operations per second IOPS that the volume supports. For io1 volumes, this represents the number of IOPS that are provisioned for the volume. For gp2 volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. For more information, see Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html in the *Amazon Elastic Compute Cloud User Guide*.
Constraints: Range is 100-16,000 IOPS for gp2 volumes and 100 to 64,000IOPS for io1 volumes in most Regions. Maximum io1 IOPS of 64,000 is guaranteed only on Nitro-based instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances. Other instance families guarantee performance up to 32,000 IOPS. For more information, see Amazon EBS Volume Types: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html in the *Amazon Elastic Compute Cloud User Guide*.
Condition: This parameter is required for requests to create io1 volumes; it is not used in requests to create gp2, st1, sc1, or standard volumes.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-iops
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER SnapshotId
        The ID of the snapshot.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-snapshotid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER VolumeSize
        The size of the volume, in GiB.
Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.
Constraints: 1-16384 for General Purpose SSD gp2, 4-16384 for Provisioned IOPS SSD io1, 500-16384 for Throughput Optimized HDD st1, 500-16384 for Cold HDD sc1, and 1-1024 for Magnetic standard volumes. If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-volumesize
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER VolumeType
        The volume type. If you set the type to io1, you must also specify the **Iops** parameter. If you set the type to gp2, st1, sc1, or standard, you must omit the **Iops** parameter.
Default: gp2

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-volumetype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.SpotFleet.EbsBlockDevice')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DeleteOnTermination,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Encrypted,
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
        $Iops,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SnapshotId,
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
        $VolumeSize,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VolumeType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.SpotFleet.EbsBlockDevice'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
