function ProcessRequest {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position=0)]
        [String]
        $ParameterSetName,
        [parameter(Mandatory = $false,Position=1)]
        [String]
        $ProfileName = $env:AWS_PROFILE,
        [parameter(Mandatory = $true,Position=2)]
        [String]
        $Method,
        [parameter(Mandatory = $true,Position=3)]
        $Request,
        [parameter(Mandatory = $false,Position=4)]
        [String]
        $Expand
    )
    Process {
        if ($PSVersionTable.PSVersion.Major -eq 3) {
            ProcessRequest3 @PSBoundParameters
        }
        else {
            ProcessRequest4 @PSBoundParameters
        }
    }
}