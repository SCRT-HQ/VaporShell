function Add-FnBase64 {
    [cmdletbinding(DefaultParameterSetName = "String")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [parameter(ParameterSetName = "String")]
        [String]
        $String,
        [parameter(Mandatory = $true,Position = 0)]
        [parameter(ParameterSetName = "Fn")]
        [Object]
        $Fn
    )
    switch ($PsCmdlet.ParameterSetName) {
        "String" {
            $ValueToEncode = $String
        }
        "Fn" {
            $ValueToEncode = $Fn
        }
    }
    New-Object PSObject -Property @{
        "Fn::Base64" = $ValueToEncode
    }
}