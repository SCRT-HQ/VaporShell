function Add-FnRef {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $Ref
    )
    New-Object PSObject -Property @{
        Ref = $Ref
    }
}