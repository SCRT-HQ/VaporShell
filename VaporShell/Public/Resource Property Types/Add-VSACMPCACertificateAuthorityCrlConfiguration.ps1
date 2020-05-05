function Add-VSACMPCACertificateAuthorityCrlConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::CertificateAuthority.CrlConfiguration resource property to the template. Contains configuration information for a certificate revocation list (CRL. Your private certificate authority (CA creates base CRLs. Delta CRLs are not supported. You can enable CRLs for your new or an existing private CA by setting the **Enabled** parameter to true. Your private CA writes CRLs to an S3 bucket that you specify in the **S3BucketName** parameter. You can hide the name of your bucket by specifying a value for the **CustomCname** parameter. Your private CA copies the CNAME or the S3 bucket name to the **CRL Distribution Points** extension of each certificate it issues. Your S3 bucket policy must give write permission to ACM Private CA.

    .DESCRIPTION
        Adds an AWS::ACMPCA::CertificateAuthority.CrlConfiguration resource property to the template.
Contains configuration information for a certificate revocation list (CRL. Your private certificate authority (CA creates base CRLs. Delta CRLs are not supported. You can enable CRLs for your new or an existing private CA by setting the **Enabled** parameter to true. Your private CA writes CRLs to an S3 bucket that you specify in the **S3BucketName** parameter. You can hide the name of your bucket by specifying a value for the **CustomCname** parameter. Your private CA copies the CNAME or the S3 bucket name to the **CRL Distribution Points** extension of each certificate it issues. Your S3 bucket policy must give write permission to ACM Private CA.

ACM Private CA assets that are stored in Amazon S3 can be protected with encryption. For more information, see Encrypting Your CRLs: https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption.

Your private CA uses the value in the **ExpirationInDays** parameter to calculate the **nextUpdate** field in the CRL. The CRL is refreshed at 1/2 the age of next update or when a certificate is revoked. When a certificate is revoked, it is recorded in the next CRL that is generated and in the next audit report. Only time valid certificates are listed in the CRL. Expired certificates are not included.

CRLs contain the following fields:

+  **Version**: The current version number defined in RFC 5280 is V2. The integer value is 0x1.

+  **Signature Algorithm**: The name of the algorithm used to sign the CRL.

+  **Issuer**: The X.500 distinguished name of your private CA that issued the CRL.

+  **Last Update**: The issue date and time of this CRL.

+  **Next Update**: The day and time by which the next CRL will be issued.

+  **Revoked Certificates**: List of revoked certificates. Each list item contains the following information.

+  **Serial Number**: The serial number, in hexadecimal format, of the revoked certificate.

+  **Revocation Date**: Date and time the certificate was revoked.

+  **CRL Entry Extensions**: Optional extensions for the CRL entry.

+  **X509v3 CRL Reason Code**: Reason the certificate was revoked.

+  **CRL Extensions**: Optional extensions for the CRL.

+  **X509v3 Authority Key Identifier**: Identifies the public key associated with the private key used to sign the certificate.

+  **X509v3 CRL Number:**: Decimal sequence number for the CRL.

+  **Signature Algorithm**: Algorithm used by your private CA to sign the CRL.

+  **Signature Value**: Signature computed over the CRL.

Certificate revocation lists created by ACM Private CA are DER-encoded. You can use the following OpenSSL command to list a CRL.

openssl crl -inform DER -text -in crl_path -noout

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html

    .PARAMETER Enabled
        Boolean value that specifies whether certificate revocation lists CRLs are enabled. You can use this value to enable certificate revocation for a new CA when you call the CreateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html action or for an existing CA when you call the UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER ExpirationInDays
        Number of days until a certificate expires.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-expirationindays
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER CustomCname
        Name inserted into the certificate **CRL Distribution Points** extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-customcname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER S3BucketName
        Name of the S3 bucket that contains the CRL. If you do not provide a value for the **CustomCname** argument, the name of your S3 bucket is placed into the **CRL Distribution Points** extension of the issued certificate. You can change the name of your bucket by calling the UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html action. You must specify a bucket policy that allows ACM Private CA to write the CRL to your bucket.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-s3bucketname
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ACMPCA.CertificateAuthority.CrlConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExpirationInDays,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CustomCname,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $S3BucketName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.CertificateAuthority.CrlConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
