function Set-VSCredentials {
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [String]
        $AccessKey,
        [parameter(Mandatory = $false)]
        [String]
        $SecretKey,
        [parameter(Mandatory = $false)]
        [ValidateSet("APNortheast1","APNortheast2","APSouth1","APSoutheast1","APSoutheast2","CACentral1","CNNorth1","EUCentral1","EUWest1","EUWest2","SAEast1","USEast1","USEast2","USGovCloudWest1","USWest1","USWest2")]
        [String]
        $Region,
        [parameter(Mandatory = $false)]
        [String]
        $ExternalID,
        [parameter(Mandatory = $false)]
        [String]
        $MfaSerial,
        [parameter(Mandatory = $false)]
        [String]
        $RoleArn,
        [parameter(Mandatory = $false)]
        [String]
        $SourceProfile,
        [parameter(Mandatory = $false)]
        [String]
        $Token,
        [parameter(Mandatory = $false)]
        [String]
        $ProfileName = $env:AWS_PROFILE
    )
    Process {
        if (!$ProfileName) {$ProfileName = "default"}
        $options = New-Object Amazon.Runtime.CredentialManagement.CredentialProfileOptions
        foreach ($key in $PSBoundParameters.Keys) {
            if ($options.PSObject.Properties.Name -contains $key) {
                Write-Verbose "Setting $key"
                $options.$key = $PSBoundParameters[$key]
            }
        }
        $prof = New-Object Amazon.Runtime.CredentialManagement.CredentialProfile "$ProfileName", $options
        if ($PSBoundParameters.Keys -contains "Region") {
            Write-Verbose "Setting Region"
            $Region = $PSBoundParameters["Region"]
            $prof.Region = [Amazon.RegionEndpoint]::$Region
        }
        $sharedFile = New-Object Amazon.Runtime.CredentialManagement.SharedCredentialsFile
        Write-Verbose "Updating SharedCredentials file"
        $sharedFile.RegisterProfile($prof)
    }
}