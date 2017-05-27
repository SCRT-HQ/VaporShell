function Add-FnSelect {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [int]
        $Index,
        [parameter(Mandatory = $true,Position = 1)]
        $ListOfObjects
    )
    $objCount = Get-TrueCount $ListOfObjects
    if ($objCount -eq 1) {
        Write-Debug "Single object passed"
        $obj = New-Object PSObject -Property @{
            "Fn::Select" = @([string]$Index,$ListOfObjects)
        }
    }
    else {
        Write-Debug "$objCount objects passed"
        $obj = New-Object PSObject -Property @{
            "Fn::Select" = @([string]$Index,@($ListOfObjects))
        }
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n`t$($obj | ConvertTo-Json -Depth 5 -Compress)`n"
    return $obj
}