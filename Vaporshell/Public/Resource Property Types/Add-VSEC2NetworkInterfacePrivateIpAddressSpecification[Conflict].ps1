function Add-VSEC2NetworkInterfacePrivateIpAddressSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInterface.PrivateIpAddressSpecification resource property to the template

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInterface.PrivateIpAddressSpecification resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html

    .PARAMETER Primary
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-primary    
		PrimitiveType: Boolean    
		Required: True    
		UpdateType: Mutable    

    .PARAMETER PrivateIpAddress
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-privateipaddress    
		PrimitiveType: String    
		Required: True    
		UpdateType: Mutable    

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.NetworkInterface.PrivateIpAddressSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [System.Boolean]
        $Primary,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    throw "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."
                }
            })]
        $PrivateIpAddress
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkInterface.PrivateIpAddressSpecification'
    }
}
