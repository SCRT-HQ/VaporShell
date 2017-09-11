function Get-VSS3BucketList {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "ListBuckets"
        $requestType = "Amazon.S3.Model.$($method)Request"
        $request = New-Object $requestType
        $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request $expand
        if (!$results) {
            return
        }
        elseif ($results -is 'System.Management.Automation.ErrorRecord') {
            $PSCmdlet.ThrowTerminatingError($results)
        }
        elseif ($results) {
            return $results
        }
    }
}