function Add-FnBase64 {
    <#
    .SYNOPSIS
        Adds the intrinsic function "Fn::Base64" to a resource property
    
    .DESCRIPTION
        The intrinsic function Fn::Base64 returns the Base64 representation of the input string. This function is typically used to pass encoded data to Amazon EC2 instances by way of the UserData property.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-base64.html
    
    .PARAMETER ValueToEncode
        The string value you want to convert to Base64.

    .EXAMPLE
        Add-FnBase64 -ValueToEncode "AWS CloudFormation"

        # When the template is exported, this will convert to: {"Fn::Base64":"AWS CloudFormation"}

    .EXAMPLE
        Add-FnBase64 -ValueToEncode (Add-FnRef $_AWSRegion)

        # When the template is exported, this will convert to: {"Fn::Base64":{"Ref":"AWS::Region"}}

    .NOTES
        You can use any function that returns a string inside the Fn::Base64 function.

    .FUNCTIONALITY
        Vaporshell
    #>
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $ValueToEncode
    )
    $obj = New-Object PSObject -Property @{
        "Fn::Base64" = $ValueToEncode
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}