function Get-VSS3ObjectList {
    <#
    .SYNOPSIS
    Gets the objects from a specific S3 bucket

    .PARAMETER BucketName
    The name of the bucket containing the object.

    .PARAMETER Prefix
    Limits the response to keys that begin with the specified prefix.

    .PARAMETER StartAfter
    StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified key. StartAfter can be any key in the bucket.

    .PARAMETER MaxKeys
    Sets the maximum number of keys returned in the response. The response might contain fewer keys but will never contain more.

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
        [String]
        $Prefix,
        [parameter(Mandatory = $false)]
        [String]
        $StartAfter,
        [parameter(Mandatory = $false)]
        [System.Int32]
        $MaxKeys,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        Import-AWSSDK
    }
    Process {
        $method = "ListObjectsV2"
        $expand = "S3Objects"
        $requestType = "Amazon.S3.Model.$($method)Request"
        $request = New-Object $requestType
        foreach ($key in $PSBoundParameters.Keys) {
            if ($request.PSObject.Properties.Name -contains $key) {
                $request.$key = $PSBoundParameters[$key]
            }
        }
        $request.FetchOwner = $true
        $results = ProcessRequest $PSCmdlet.ParameterSetName $ProfileName $method $request $expand
        if (!$results) {
            return
        }
        elseif ($results -is 'System.Management.Automation.ErrorRecord') {
            $PSCmdlet.ThrowTerminatingError($results)
        }
        elseif ($results) {
            return $results | Select-Object *,@{N="OwnerDisplayName";E={$_.Owner.DisplayName}} -ExcludeProperty Owner
        }
    }
}
