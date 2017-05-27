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
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): $($obj | ConvertTo-Json -Depth 5 -Compress)"
    return $obj
}