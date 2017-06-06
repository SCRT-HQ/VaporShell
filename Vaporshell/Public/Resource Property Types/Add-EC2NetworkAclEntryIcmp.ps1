function Add-EC2NetworkAclEntryIcmp {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkAclEntry.Icmp resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html

    .PARAMETER Code
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-code
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .PARAMETER Type
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-type
		PrimitiveType: Integer
		Required: False
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.NetworkAclEntry.Icmp')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [Int]
        $Code,
        [parameter(Mandatory = $false)]
        [Int]
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkAclEntry.Icmp'
    }
}
