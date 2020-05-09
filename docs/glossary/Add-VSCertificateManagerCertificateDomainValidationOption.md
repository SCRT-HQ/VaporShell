# Add-VSCertificateManagerCertificateDomainValidationOption

## SYNOPSIS
Adds an AWS::CertificateManager::Certificate.DomainValidationOption resource property to the template.
DomainValidationOption is a property of the AWS::CertificateManager::Certificate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html resource that specifies the AWS Certificate Manager (ACM certificate domain to which ACM will send validation emails.

## SYNTAX

```
Add-VSCertificateManagerCertificateDomainValidationOption [-DomainName] <Object> [-ValidationDomain] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CertificateManager::Certificate.DomainValidationOption resource property to the template.
DomainValidationOption is a property of the AWS::CertificateManager::Certificate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-certificate.html resource that specifies the AWS Certificate Manager (ACM certificate domain to which ACM will send validation emails.

## PARAMETERS

### -DomainName
A fully qualified domain name FQDN in the certificate request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoptions-domainname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidationDomain
The domain name to which you want ACM to send validation emails.
This domain name is the suffix of the email addresses that you want ACM to use.
This must be the same as the DomainName value or a superdomain of the DomainName value.
For example, if you request a certificate for testing.example.com, you can specify example.com as this value.
In that case, ACM sends domain validation emails to the following five addresses:
+ admin@example.com
+ administrator@example.com
+ hostmaster@example.com
+ postmaster@example.com
+ webmaster@example.com

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html#cfn-certificatemanager-certificate-domainvalidationoption-validationdomain
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CertificateManager.Certificate.DomainValidationOption
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-certificatemanager-certificate-domainvalidationoption.html)

