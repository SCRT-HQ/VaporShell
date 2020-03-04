function Add-VSACMPCACertificateAuthorityRevocationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::CertificateAuthority.RevocationConfiguration resource property to the template. Certificate revocation information used by the CreateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html and UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html actions. Your private certificate authority (CA can create and maintain a certificate revocation list (CRL. A CRL contains information about certificates revoked by your CA. For more information, see RevokeCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html.

    .DESCRIPTION
        Adds an AWS::ACMPCA::CertificateAuthority.RevocationConfiguration resource property to the template.
Certificate revocation information used by the CreateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html and UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html actions. Your private certificate authority (CA can create and maintain a certificate revocation list (CRL. A CRL contains information about certificates revoked by your CA. For more information, see RevokeCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html

    .PARAMETER CrlConfiguration
        Configuration of the certificate revocation list CRL, if any, maintained by your private CA.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html#cfn-acmpca-certificateauthority-revocationconfiguration-crlconfiguration
        UpdateType: Mutable
        Type: CrlConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.CertificateAuthority.RevocationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CrlConfiguration
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.CertificateAuthority.RevocationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
