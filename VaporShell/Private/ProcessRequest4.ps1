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
            $matchedProfile = $sharedFile.ListProfiles() | Where-Object {$_.Name -eq $ProfileName}
            if ($null -eq $matchedProfile) {
                $creds = [Amazon.Runtime.FallbackCredentialsFactory]::GetCredentials()
                $endPoint = if ([Amazon.Runtime.FallbackRegionFactory]::GetRegionEndpoint()) {
                    [Amazon.Runtime.FallbackRegionFactory]::GetRegionEndpoint()
                }
                else {
                    # Need to set a default if we can't resolve the region
                    Write-Warning "Unable to resolve target region! Defaulting to us-east-1 and continuing in 5 seconds."
                    Write-Warning "If you do not want to execute method [$Method] on service [$service] in this region,"
                    Write-Warning "please set the environment variable 'AWS_REGION' or run the following to set a region"
                    Write-Warning "on the shared credential file:`n`n`tSet-VSCredential -ProfileName $ProfileName -Region <PREFERRED REGION>"
                    Start-Sleep -Seconds 5
                    [Amazon.RegionEndpoint]::USEast1
                }
            }
            else {
                $creds = New-Object Amazon.Runtime.StoredProfileAWSCredentials $ProfileName -ErrorAction Stop
                $endPoint = if ($matchedProfile.Region) {
                    $matchedProfile.Region
                }
                elseif ([Amazon.Runtime.FallbackRegionFactory]::GetRegionEndpoint()) {
                    [Amazon.Runtime.FallbackRegionFactory]::GetRegionEndpoint()
                }
                else {
                    # Need to set a default if we can't resolve the region
                    Write-Warning "Unable to resolve target region! Defaulting to us-east-1 and continuing in 5 seconds."
                    Write-Warning "If you do not want to execute method [$Method] on service [$service] in this region,"
                    Write-Warning "please set the environment variable 'AWS_REGION' or run the following to set a region"
                    Write-Warning "on the shared credential file:`n`n`tSet-VSCredential -ProfileName $ProfileName -Region <PREFERRED REGION>"
                    Start-Sleep -Seconds 5
                    [Amazon.RegionEndpoint]::USEast1
                }
            }
            Write-Verbose "Building '$service' client in region '$($endPoint.DisplayName)' [$($endPoint.SystemName)]"
            if ($endPoint) {
                $client = New-Object "Amazon.$($service).Amazon$($service)Client" $creds,$endPoint -ErrorAction Stop
            }
            else {
                return (New-VSError -String "No region set for profile '$ProfileName'! Please run the following to set a region:`n`nSet-VSCredential -ProfileName $ProfileName -Region <PREFERRED REGION>")
            }
        }
        catch {
            return (New-VSError -String "$($_.Exception.Message)")
        }
        if ($client | Get-Member -MemberType Method -Name "$Method*" | Where-Object {$_.Name -eq "$($Method)Async"}) {
            $useAsync = $true
            Write-Verbose "Processing async request:`n$($PSBoundParameters | Format-Table -AutoSize | Out-String)"
        }
        else {
            $useAsync = $false
            Write-Verbose "Processing request:`n$($PSBoundParameters | Format-Table -AutoSize | Out-String)"
        }
        $i = 0
        do {
            $i++
            if ($useAsync) {
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
