function Add-FnImportValue {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        $ValueToImport
    )
    $obj = New-Object PSObject -Property @{
        "Fn::ImportValue" = $ValueToImport
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}