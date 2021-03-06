function VSStackTag {
    Param
    (
        [parameter(Mandatory = $false, Position = 0)]
        [System.String]
        $Key,
        [parameter(Mandatory = $false, Position = 1)]
        [System.String]
        $Value
    )
    Begin {
        Import-AWSSDK
    }
    Process {
        New-Object Amazon.CloudFormation.Model.Tag -Property $PSBoundParameters
    }
}
