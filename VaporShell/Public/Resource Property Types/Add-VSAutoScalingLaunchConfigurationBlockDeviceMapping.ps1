function Add-VSAutoScalingLaunchConfigurationBlockDeviceMapping {
    <#
    .SYNOPSIS
        Adds an AWS::AutoScaling::LaunchConfiguration.BlockDeviceMapping resource property to the template. BlockDeviceMapping is a property of LaunchConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html that describes a block device mapping for an Amazon EC2 Auto Scaling group.

    .DESCRIPTION
        Adds an AWS::AutoScaling::LaunchConfiguration.BlockDeviceMapping resource property to the template.
BlockDeviceMapping is a property of LaunchConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html that describes a block device mapping for an Amazon EC2 Auto Scaling group.

Each instance that is launched has an associated root device volume, either an Amazon EBS volume or an instance store volume. You can use block device mappings to specify additional EBS volumes or instance store volumes to attach to an instance when it is launched.

For more information, see Example Block Device Mapping: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#block-device-mapping-ex in the *Amazon EC2 User Guide for Linux Instances*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html

    .PARAMETER DeviceName
        The device name exposed to the EC2 instance for example, /dev/sdh or xvdh. For more information, see Device Naming on Linux Instances: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html in the *Amazon EC2 User Guide for Linux Instances*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-devicename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Ebs
        The information about the Amazon EBS volume.
You can specify either VirtualName or Ebs, but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-ebs
        Type: BlockDevice
        UpdateType: Mutable

    .PARAMETER NoDevice
        Suppresses the device mapping. The only permitted value for this property is true.
If this property is set to true for the root device, the instance might fail the Amazon EC2 health check. Amazon EC2 Auto Scaling launches a replacement instance if the instance fails the health check.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-nodevice
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER VirtualName
        The name of the virtual device. The name must be in the form ephemeral*X* where *X* is a number starting from zero 0, for example, ephemeral0.
You can specify either VirtualName or Ebs, but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-virtualname
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AutoScaling.LaunchConfiguration.BlockDeviceMapping')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DeviceName,
        [parameter(Mandatory = $false)]
        $Ebs,
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
        $NoDevice,
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
        $VirtualName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AutoScaling.LaunchConfiguration.BlockDeviceMapping'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
