function Add-FnGetAZs {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [String]
        $Region
    )
    if (!$Region) {
        Write-Verbose "No region specified! Defaulting to deployment region"
        $obj = New-Object PSObject -Property @{
            "Fn::GetAZs" = Add-FnRef "AWS::Region" -Verbose:$false
        }
    }
    else {
        $obj = New-Object PSObject -Property @{
            "Fn::GetAZs" = $Region
        }
    }
    Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): $($obj | ConvertTo-Json -Depth 5 -Compress)"
    return $obj
}