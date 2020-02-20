function Set-VSCredential {
    <#
    .SYNOPSIS
    Sets or updates the provided ProfileName on the Shared Credentials file (~\.aws\credentials).

    .PARAMETER AccessKey
    The access key to be used in the AWSCredentials.

    .PARAMETER SecretKey
    The secret key to use when creating AWSCredentials.

    .PARAMETER Region
    AWS Region to use with this credential set

    .PARAMETER ExternalID
    The external id to use in assume role AWSCredentials.

    .PARAMETER MfaSerial
    The serial number of the MFA to use in assume role AWSCredentials.

    .PARAMETER RoleArn
    The role ARN to use when creating assume role or federated AWSCredentials.

    .PARAMETER SourceProfile
    When this CredentialProfileOptions object references another CredentialProfile, the name of the referenced CredentialProfile.

    .PARAMETER Token
    The session token to be used to create AWSCredentials.

    .PARAMETER ProfileName
     The name that you would like to set for this credential profile. If no ProfileName is provided, it defaults to the AWS_PROFILE environment variable. If that is not set, it uses "default".

    .EXAMPLE
    Set-VSCredential -AccessKey lkjsdfkjio323823kl -SecretKey l38234sdfsdflk+23kjlkfs/skljf_k -Region USWest1

    .FUNCTIONALITY
    VaporShell
    #>
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
    Begin {
        Import-AWSSDK
    }
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
