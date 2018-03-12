function Add-FnCidr {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Cidr" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::Cidr returns the specified Cidr address block.

    .LINK
        https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-cidr.html
    
    .PARAMETER IpBlock
        The user-specified default Cidr address block.
    
    .PARAMETER Count
        The number of subnets' Cidr block wanted. Count can be 1 to 256.
    
    .PARAMETER SizeMask
        Optional. The digit covered in the subnet.

    .EXAMPLE
        Add-FnBase64 -ValueToEncode "AWS CloudFormation"

        When the template is exported, this will convert to: {"Fn::Base64":"AWS CloudFormation"}

    .EXAMPLE
        Add-FnBase64 -ValueToEncode (Add-FnRef "$_AWSRegion"")

        When the template is exported, this will convert to: {"Fn::Base64":{"Ref":"AWS::Region"}}

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
            $allowedTypes = "Vaporshell.Function","System.String"
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
            $allowedTypes = "Vaporshell.Function","System.String","System.Int32"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $Count,
        [parameter(Mandatory = $false,Position = 2)]
        [ValidateScript({
            $allowedTypes = "Vaporshell.Function","System.String","System.Int32"
            if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                $true
            }
            else {
                $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
            }
        })]
        $SizeMask
    )
    $props = @($IpBlock,"$Count")
    if ($PSBoundParameters.Keys -contains 'SizeMask') {
        $props += "$SizeMask"
    }
    $obj = [PSCustomObject][Ordered]@{
        "Fn::Cidr" = $props
    }
    $obj | Add-ObjectDetail -TypeName 'Vaporshell.Function','Vaporshell.Function.Cidr'
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
}