function Set-VSCredentials {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false,Position = 0)]
        [String]
        $ProfileName = "default",
        [parameter(Mandatory = $false)]
        [String]
        $AccessKey,
        [parameter(Mandatory = $false)]
        [String]
        $SecretKey,
        [parameter(Mandatory = $false)]
        [ValidateSet("APNortheast1","APNortheast2","APSouth1","APSoutheast1","APSoutheast2","CACentral1","CNNorth1","EUCentral1","EUWest1","EUWest2","SAEast1","USEast1","USEast2","USGovCloudWest1","USWest1","USWest2")]
        [String]
        $Region
    )
    Begin {
        Import-AWSSDK
        $optProps = @{}
        if ($PSBoundParameters.Keys -contains "AccessKey") {
            Write-Verbose "Setting AccessKey"
            $optProps["AccessKey"] = $PSBoundParameters["AccessKey"]
        }
        if ($PSBoundParameters.Keys -contains "SecretKey") {
            Write-Verbose "Setting SecretKey"
            $optProps["SecretKey"] = $PSBoundParameters["SecretKey"]
        }
    }
    Process {
        $options = New-Object Amazon.Runtime.CredentialManagement.CredentialProfileOptions -Property $optProps
        $prof = [Amazon.Runtime.CredentialManagement.CredentialProfile]::new("$ProfileName", $options)
        if ($PSBoundParameters.Keys -contains "Region") {
            Write-Verbose "Setting Region"
            $Region = $PSBoundParameters["Region"]
            $prof.Region = [Amazon.RegionEndpoint]::$Region
        }
        $sharedFile = [Amazon.Runtime.CredentialManagement.SharedCredentialsFile]::new()
        Write-Verbose "Updating SharedCredentials file"
        $sharedFile.RegisterProfile($prof)
    }
}