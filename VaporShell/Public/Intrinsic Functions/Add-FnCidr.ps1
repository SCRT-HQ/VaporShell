function Add-FnCidr {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Cidr" to a resource property

    .DESCRIPTION
        The intrinsic function Fn::Cidr returns an array of CIDR address blocks. The number of CIDR blocks returned is dependent on the count parameter.

    .LINK
        https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html

    .PARAMETER IpBlock
        The user-specified CIDR address block to be split into smaller CIDR blocks.

    .PARAMETER Count
        The number of CIDRs to generate. Valid range is between 1 and 256.

    .PARAMETER CidrBits
        The number of subnet bits for the CIDR. For example, specifying a value "8" for this parameter will create a CIDR with a mask of "/24".

    .EXAMPLE
        Add-FnCidr -IpBlock "192.168.0.0/24" -Count 6 -CidrBits 5

        When the template is exported, this will convert to: { "Fn::Cidr" : [ "192.168.0.0/24", "6", "5"] }

    .NOTES
        You can use the following functions in a Fn::Cidr function:
            Fn::Select
            Ref

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType([FnCidr])]
    [cmdletbinding()]
    Param(
        [parameter(Mandatory,Position = 0)]
        [object]
        $IpBlock,
        [parameter(Mandatory,Position = 1)]
        [object]
        $Count,
        [parameter(Mandatory,Position = 2)]
        [object]
        $CidrBits
    )
    $obj = [FnCidr]::new($IpBlock,$Count,$CidrBits)
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj.ToJson($true))`n"
    $obj
}
