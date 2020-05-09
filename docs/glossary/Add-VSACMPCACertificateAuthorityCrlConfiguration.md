# Add-VSACMPCACertificateAuthorityCrlConfiguration

## SYNOPSIS
Adds an AWS::ACMPCA::CertificateAuthority.CrlConfiguration resource property to the template.
Contains configuration information for a certificate revocation list (CRL.
Your private certificate authority (CA creates base CRLs.
Delta CRLs are not supported.
You can enable CRLs for your new or an existing private CA by setting the **Enabled** parameter to true.
Your private CA writes CRLs to an S3 bucket that you specify in the **S3BucketName** parameter.
You can hide the name of your bucket by specifying a value for the **CustomCname** parameter.
Your private CA copies the CNAME or the S3 bucket name to the **CRL Distribution Points** extension of each certificate it issues.
Your S3 bucket policy must give write permission to ACM Private CA.

## SYNTAX

```
Add-VSACMPCACertificateAuthorityCrlConfiguration [[-Enabled] <Object>] [[-ExpirationInDays] <Object>]
 [[-CustomCname] <Object>] [[-S3BucketName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ACMPCA::CertificateAuthority.CrlConfiguration resource property to the template.
Contains configuration information for a certificate revocation list (CRL.
Your private certificate authority (CA creates base CRLs.
Delta CRLs are not supported.
You can enable CRLs for your new or an existing private CA by setting the **Enabled** parameter to true.
Your private CA writes CRLs to an S3 bucket that you specify in the **S3BucketName** parameter.
You can hide the name of your bucket by specifying a value for the **CustomCname** parameter.
Your private CA copies the CNAME or the S3 bucket name to the **CRL Distribution Points** extension of each certificate it issues.
Your S3 bucket policy must give write permission to ACM Private CA.

ACM Private CA assets that are stored in Amazon S3 can be protected with encryption.
For more information, see Encrypting Your CRLs: https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption.

Your private CA uses the value in the **ExpirationInDays** parameter to calculate the **nextUpdate** field in the CRL.
The CRL is refreshed at 1/2 the age of next update or when a certificate is revoked.
When a certificate is revoked, it is recorded in the next CRL that is generated and in the next audit report.
Only time valid certificates are listed in the CRL.
Expired certificates are not included.

CRLs contain the following fields:

+  **Version**: The current version number defined in RFC 5280 is V2.
The integer value is 0x1.

+  **Signature Algorithm**: The name of the algorithm used to sign the CRL.

+  **Issuer**: The X.500 distinguished name of your private CA that issued the CRL.

+  **Last Update**: The issue date and time of this CRL.

+  **Next Update**: The day and time by which the next CRL will be issued.

+  **Revoked Certificates**: List of revoked certificates.
Each list item contains the following information.

+  **Serial Number**: The serial number, in hexadecimal format, of the revoked certificate.

+  **Revocation Date**: Date and time the certificate was revoked.

+  **CRL Entry Extensions**: Optional extensions for the CRL entry.

+  **X509v3 CRL Reason Code**: Reason the certificate was revoked.

+  **CRL Extensions**: Optional extensions for the CRL.

+  **X509v3 Authority Key Identifier**: Identifies the public key associated with the private key used to sign the certificate.

+  **X509v3 CRL Number:**: Decimal sequence number for the CRL.

+  **Signature Algorithm**: Algorithm used by your private CA to sign the CRL.

+  **Signature Value**: Signature computed over the CRL.

Certificate revocation lists created by ACM Private CA are DER-encoded.
You can use the following OpenSSL command to list a CRL.

openssl crl -inform DER -text -in crl_path -noout

## PARAMETERS

### -Enabled
Boolean value that specifies whether certificate revocation lists CRLs are enabled.
You can use this value to enable certificate revocation for a new CA when you call the CreateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html action or for an existing CA when you call the UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-enabled
UpdateType: Mutable
PrimitiveType: Boolean

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpirationInDays
Number of days until a certificate expires.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-expirationindays
UpdateType: Mutable
PrimitiveType: Integer

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CustomCname
Name inserted into the certificate **CRL Distribution Points** extension that enables the use of an alias for the CRL distribution point.
Use this value if you don't want the name of your S3 bucket to be public.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-customcname
UpdateType: Mutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3BucketName
Name of the S3 bucket that contains the CRL.
If you do not provide a value for the **CustomCname** argument, the name of your S3 bucket is placed into the **CRL Distribution Points** extension of the issued certificate.
You can change the name of your bucket by calling the UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html action.
You must specify a bucket policy that allows ACM Private CA to write the CRL to your bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html#cfn-acmpca-certificateauthority-crlconfiguration-s3bucketname
UpdateType: Mutable
PrimitiveType: String

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ACMPCA.CertificateAuthority.CrlConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-crlconfiguration.html)

