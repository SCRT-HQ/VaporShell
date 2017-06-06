function Add-EC2SpotFleetNetworkInterfaces {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::SpotFleet.NetworkInterfaces resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html

    .PARAMETER AssociatePublicIpAddress
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-associatepublicipaddress
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER DeleteOnTermination
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-deleteontermination
		PrimitiveType: Boolean
		Required: False
		UpdateType: Mutable

    .PARAMETER Description
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-description
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER DeviceIndex
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-deviceindex
		PrimitiveType: Integer
		Required: True
		UpdateType: Mutable

    .PARAMETER Groups
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-groups
		DuplicatesAllowed: False
		PrimitiveItemType: String
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER Ipv6AddressCount
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-ipv6addresscount
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER Ipv6Addresses
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-ipv6addresses
		Required: False
		Type: InstanceIpv6Address
		UpdateType: Mutable

    .PARAMETER NetworkInterfaceId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-networkinterfaceid
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .PARAMETER PrivateIpAddresses
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-privateipaddresses
		DuplicatesAllowed: False
		ItemType: PrivateIpAddresses
		Required: False
		Type: List
		UpdateType: Mutable

    .PARAMETER SecondaryPrivateIpAddressCount
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-secondaryprivateipaddresscount
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER SubnetId
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-subnetid
		PrimitiveType: String
		Required: False
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.SpotFleet.NetworkInterfaces')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $AssociatePublicIpAddress,
        [parameter(Mandatory = $false)]
        [System.Boolean]
        $DeleteOnTermination,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $Description,
        [parameter(Mandatory = $true)]
        [Int]
        $DeviceIndex,
        [parameter(Mandatory = $false)]
        $Groups,
        [parameter(Mandatory = $false)]
        [Int]
        $Ipv6AddressCount,
        [parameter(Mandatory = $false)]
        $Ipv6Addresses,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $NetworkInterfaceId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.SpotFleet.PrivateIpAddresses"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $PrivateIpAddresses,
        [parameter(Mandatory = $false)]
        [Int]
        $SecondaryPrivateIpAddressCount,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $SubnetId
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True" -or $val -eq "False") {
                $val = $val.ToLower()
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.SpotFleet.NetworkInterfaces'
    }
}
