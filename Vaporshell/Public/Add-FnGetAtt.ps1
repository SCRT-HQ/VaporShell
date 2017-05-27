function Add-FnGetAtt {
    [cmdletbinding(DefaultParameterSetName = "String")]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $LogicalNameOfResource,
        [parameter(Mandatory = $true,Position = 1,ParameterSetName = "String")]
        [String]
        $AttributeName,
        [parameter(Mandatory = $true,Position = 1,ParameterSetName = "Fn")]
        [Object]
        $AttributeNameFn
    )
    switch ($PsCmdlet.ParameterSetName) {
        "String" {
            $AN = $AttributeName
        }
        "Fn" {
            $AN = $AttributeNameFn
        }
    }
    New-Object PSObject -Property @{
        "Fn::GetAtt" = @($LogicalNameOfResource,$AN)
    }
}