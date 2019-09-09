function Add-VSEC2NetworkAclEntryIcmp {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkAclEntry.Icmp resource property to the template. Describes the ICMP type and code.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkAclEntry.Icmp resource property to the template.
Describes the ICMP type and code.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html

    .PARAMETER Code
        The Internet Control Message Protocol ICMP code. You can use -1 to specify all ICMP codes for the given ICMP type. Requirement is conditional: Required if you specify 1 ICMP for the protocol parameter.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-code
        PrimitiveType: Integer
        UpdateType: Mutable

    .PARAMETER Type
        The Internet Control Message Protocol ICMP type. You can use -1 to specify all ICMP types. Conditional requirement: Required if you specify 1 ICMP for the CreateNetworkAclEntry protocol parameter.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-type
        PrimitiveType: Integer
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkAclEntry.Icmp'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
