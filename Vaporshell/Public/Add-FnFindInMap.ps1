function Add-FnFindInMap {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $MapName,
        [parameter(Mandatory = $true,Position = 1)]
        $TopLevelKey,
        [parameter(Mandatory = $true,Position = 2)]
        $SecondLevelKey
    )
    $obj = New-Object PSObject -Property @{
        "Fn::FindInMap" = @($MapName,$TopLevelKey,$SecondLevelKey)
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}