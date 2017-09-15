function ProcessRequest4 {
    <#
    .SYNOPSIS
    Receives AWS SDK requests, then sends them to the appropriate processor function depending on PowerShell version, as PSv3 does not allow dot sourcing method names.
    #>
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
        if (!$ProfileName) {
            $ProfileName = "default"
            $PSBoundParameters["ProfileName"] = "default"
        }
        $results = @()
        try {
            $service = ($request.PSObject.TypeNames)[0].split('.')[1]
            $sharedFile = New-Object Amazon.Runtime.CredentialManagement.SharedCredentialsFile -ErrorAction Stop
            $endPoint = ($sharedFile.ListProfiles() | Where-Object {$_.Name -eq $ProfileName}).Region
            $storedCreds = New-Object Amazon.Runtime.StoredProfileAWSCredentials $ProfileName -ErrorAction Stop
            Write-Verbose "Building '$service' client in region '$($endPoint.DisplayName)' [$($endPoint.SystemName)]"
            $client = New-Object "Amazon.$($service).Amazon$($service)Client" $storedCreds,$endPoint -ErrorAction Stop
        }
        catch {
            Write-Error $_
            return
        }
        Write-Verbose "Processing request:`n$($PSBoundParameters | Format-Table -AutoSize | Out-String)"
        $i = 0
        do {
            $i++
            if ($IsCoreCLR) {
                $result = $client."$($Method)Async"($Request)
                if ($Expand) {
                    $results += $result.Result.$Expand
                }
                else {
                    $results += $result.Result
                }
            }
            else {
                $result = $client.$Method($Request)
                if ($Expand) {
                    $results += $result.$Expand
                }
                else {
                    $results += $result
                }
            }
            if ($result.Result.NextToken -and !$request.MaxResults) {
                $Request.NextToken = $result.Result.NextToken
                $done = $false
            }
            elseif ($result.NextToken -and !$request.MaxResults) {
                $Request.NextToken = $result.NextToken
                $done = $false
            }
            else {
                $done = $true
            }
        }
        until ($done)
        if (!$result) {
            return
        }
        if ($results) {
            return $results
        }
        elseif ($IsCoreCLR) {
            if ($result.Result) {
                return $result.Result
            }
            elseif ($result.Exception) {
                return (New-VSError $result)
            }
        }
        else {
            return $result
        }
    }
}