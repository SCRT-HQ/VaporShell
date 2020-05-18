# Add-VSACMPCACertificateAuthorityRevocationConfiguration

## SYNOPSIS
Adds an AWS::ACMPCA::CertificateAuthority.RevocationConfiguration resource property to the template.
Certificate revocation information used by the CreateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html and UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html actions.
Your private certificate authority (CA can create and maintain a certificate revocation list (CRL.
A CRL contains information about certificates revoked by your CA.
For more information, see RevokeCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html.

## SYNTAX

```
Add-VSACMPCACertificateAuthorityRevocationConfiguration [[-CrlConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ACMPCA::CertificateAuthority.RevocationConfiguration resource property to the template.
Certificate revocation information used by the CreateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html and UpdateCertificateAuthority: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html actions.
Your private certificate authority (CA can create and maintain a certificate revocation list (CRL.
A CRL contains information about certificates revoked by your CA.
For more information, see RevokeCertificate: https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html.

## PARAMETERS

### -CrlConfiguration
Configuration of the certificate revocation list CRL, if any, maintained by your private CA.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html#cfn-acmpca-certificateauthority-revocationconfiguration-crlconfiguration
UpdateType: Mutable
Type: CrlConfiguration

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ACMPCA.CertificateAuthority.RevocationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-revocationconfiguration.html)

