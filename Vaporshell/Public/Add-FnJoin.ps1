function Add-FnJoin {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [String]
        $Delimiter = $null,
        [parameter(Mandatory = $true,Position = 1)]
        [object[]]
        $Values
    )
    $obj = New-Object PSObject -Property @{
        "Fn::Join" = @($Delimiter,@($Values))
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}