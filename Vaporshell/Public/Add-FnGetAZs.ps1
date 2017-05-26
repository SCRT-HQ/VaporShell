function Add-FnGetAZs {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [String]
        $Region
    )
    if (!$Region) {
        New-Object PSObject -Property @{
            "Fn::GetAZs" = Add-FnRef "AWS::Region"
        }
    }
    else {
        New-Object PSObject -Property @{
            "Fn::GetAZs" = $Region
        }
    }
}