function Get-VSS3BucketLocation {
    <#
    .SYNOPSIS
    Gets the location of a specific S3 bucket

    .PARAMETER BucketName
    The name of the bucket you are trying to locate.

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
        $ProfileName = $env:AWS_PROFILE
    )
    Begin {
        Import-AWSSDK
    }
    Process {
        $method = "GetBucketLocation"
        $requestType = "Amazon.S3.Model.$($method)Request"
        $request = New-Object $requestType
        $request.BucketName = $BucketName
        $expand = "Location"
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
