function New-VSS3Object {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true,Position = 0)]
        [String]
        $BucketName,
        [parameter(Mandatory = $false)]
        [ValidateSet("NoACL","Private","PublicRead","PublicReadWrite","AuthenticatedRead","AWSExecRead","BucketOwnerRead","BucketOwnerFullControl","LogDeliveryWrite")]
        [String]
        $CannedACL,
        [parameter(Mandatory = $false)]
        [System.String]
        $ContentBody,
        [parameter(Mandatory = $false)]
        [System.String]
        $ContentType,
        [parameter(Mandatory = $false)]
        [System.String]
        $FilePath,
        [parameter(Mandatory = $false)]
        [System.String]
        $Key,
        [parameter(Mandatory = $false)]
        [System.String]
        $KMSKeyId,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        $method = "PutObject"
        $requestType = "Amazon.S3.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            switch ($key) {
                CannedACL {
                    $request.CannedACL = [Amazon.S3.S3CannedACL]::$CannedACL
                }
                KMSKeyId {
                    $request.ServerSideEncryptionKeyManagementServiceKeyId = $KMSKeyId
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