function Add-FnBase64 {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $ValueToEncode
    )
    $obj = New-Object PSObject -Property @{
        "Fn::Base64" = $ValueToEncode
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): $($obj | ConvertTo-Json -Depth 5 -Compress)"
    return $obj
}