# Add-VSEC2ClientVpnEndpointCertificateAuthenticationRequest

## SYNOPSIS
Adds an AWS::EC2::ClientVpnEndpoint.CertificateAuthenticationRequest resource property to the template.
Information about the client certificate to be used for authentication.

## SYNTAX

```
Add-VSEC2ClientVpnEndpointCertificateAuthenticationRequest [-ClientRootCertificateChainArn] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::ClientVpnEndpoint.CertificateAuthenticationRequest resource property to the template.
Information about the client certificate to be used for authentication.

## PARAMETERS

### -ClientRootCertificateChainArn
The ARN of the client certificate.
The certificate must be signed by a certificate authority CA and it must be provisioned in AWS Certificate Manager ACM.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html#cfn-ec2-clientvpnendpoint-certificateauthenticationrequest-clientrootcertificatechainarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.ClientVpnEndpoint.CertificateAuthenticationRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html)

