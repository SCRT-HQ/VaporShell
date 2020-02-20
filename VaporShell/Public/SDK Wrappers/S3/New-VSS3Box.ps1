function New-VSS3Box {
    <#
    .SYNOPSIS
    Creates a new bucket in S3. Due to auto-generated resource functions already using the function name 'New-VSS3Bucket', this has been renamed to prevent collisions.

    .PARAMETER BucketName
    The name of the bucket to be created.

    .PARAMETER BucketRegionName
    The bucket region locality expressed using the name of the region. When set, this will determine where your data will reside in S3. Valid values: us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1

    .PARAMETER CannedACL
    The canned ACL to apply to the bucket. Valid options are: "NoACL","Private","PublicRead","PublicReadWrite","AuthenticatedRead","AWSExecRead","BucketOwnerRead","BucketOwnerFullControl","LogDeliveryWrite"

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
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
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        Import-AWSSDK
    }
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
