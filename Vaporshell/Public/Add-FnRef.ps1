function Add-FnRef {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $Ref
    )
    $obj = New-Object PSObject -Property @{
        Ref = $Ref
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}