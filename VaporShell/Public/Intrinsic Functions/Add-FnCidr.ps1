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
    [OutputType('Vaporshell.Function.Cidr')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.Select","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $IpBlock,
        [parameter(Mandatory = $true,Position = 1)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.Select","Vaporshell.Function.Ref","System.String","System.Int32"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $Count,
        [parameter(Mandatory = $true,Position = 2)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function.FindInMap","Vaporshell.Function.Ref","System.String"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $CidrBits
    )
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Cidr" = @($IpBlock,$Count,$CidrBits)
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Cidr'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}
