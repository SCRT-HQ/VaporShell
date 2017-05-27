function Add-FnSplit {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $Delimiter,
        [parameter(Mandatory = $true,Position = 1)]
        [object]
        $SourceString
    )
    $obj = New-Object PSObject -Property @{
        "Fn::Split" = @($Delimiter,$SourceString)
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}