function New-VSS3Object {
    <#
    .SYNOPSIS
    Uploads an object to S3

    .PARAMETER BucketName
    The name of the bucket to contain the object.

    .PARAMETER CannedACL
    The canned access control list (CACL) to apply to the object. Valid options are: "NoACL","Private","PublicRead","PublicReadWrite","AuthenticatedRead","AWSExecRead","BucketOwnerRead","BucketOwnerFullControl","LogDeliveryWrite"

    .PARAMETER ContentBody
    Text content to be uploaded. Use this property if you want to upload plaintext to S3. The content type will be set to 'text/plain'.

    .PARAMETER ContentBody
    Text content to be uploaded. Use this property if you want to upload plaintext to S3. The content type will be set to 'text/plain'.

    .PARAMETER FilePath
    The full path and name to a file to be uploaded. If this is set the request will upload the specified file to S3.

    .PARAMETER Key
    The key used to identify the object in S3.

    .PARAMETER KMSKeyId
    The id of the AWS Key Management Service key that Amazon S3 should use to encrypt and decrypt the object. If a key id is not specified, the default key will be used for encryption and decryption.

    .PARAMETER ProfileName
    The name of the configuration profile to deploy the stack with. Defaults to $env:AWS_PROFILE, if set.

    .FUNCTIONALITY
    Vaporshell
    #>
    [cmdletbinding()]
    Param (
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
    Begin {
        Import-AWSSDK
    }
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
