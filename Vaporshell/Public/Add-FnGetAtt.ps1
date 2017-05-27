function Add-FnGetAtt {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $LogicalNameOfResource,
        [parameter(Mandatory = $true,Position = 1)]
        $AttributeName
    )
    $obj = New-Object PSObject -Property @{
        "Fn::GetAtt" = @($LogicalNameOfResource,$AttributeName)
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}