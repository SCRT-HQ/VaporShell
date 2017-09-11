function New-VSS3Bucket {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $BucketName,
        [parameter(Mandatory = $false)]
        [ValidateSet("us-east-1","us-west-1","us-west-2","eu-west-1","ap-southeast-1","ap-southeast-2","ap-northeast-1","sa-east-1")]
        [String]
        $BucketRegionName,
        [parameter(Mandatory = $false)]
        [ValidateSet("NoACL","Private","PublicRead","PublicReadWrite","AuthenticatedRead","AWSExecRead","BucketOwnerRead","BucketOwnerFullControl","LogDeliveryWrite")]
        [String]
        $CannedACL,
        [parameter(Mandatory = $false)]
        [Object[]]
        $Grants,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "PutBucket"
        $requestType = "Amazon.S3.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                CannedACL {
                    $request.CannedACL = [Amazon.S3.S3CannedACL]::$CannedACL
                }
                Default {
                    if ($request.PSObject.Properties.Name -contains $key) {
                        $request.$key = $PSBoundParameters[$key]
                    }
                }
            }
        }
        $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request
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