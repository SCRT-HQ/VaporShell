# Add-VSEC2ClientVpnEndpointClientAuthenticationRequest

## SYNOPSIS
Adds an AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest resource property to the template.
Describes the authentication method to be used by a Client VPN endpoint.
Client VPN supports Active Directory and mutual authentication.
For more information, see Authentication: https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication in the *AWS Client VPN Administrator Guide*.

## SYNTAX

```
Add-VSEC2ClientVpnEndpointClientAuthenticationRequest [[-MutualAuthentication] <Object>] [-Type] <Object>
 [[-ActiveDirectory] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest resource property to the template.
Describes the authentication method to be used by a Client VPN endpoint.
Client VPN supports Active Directory and mutual authentication.
For more information, see Authentication: https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/authentication-authrization.html#client-authentication in the *AWS Client VPN Administrator Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MutualAuthentication
Information about the authentication certificates to be used, if applicable.
You must provide this information if **Type** is certificate-authentication.

Type: CertificateAuthenticationRequest
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-mutualauthentication
UpdateType: Mutable

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

### -Type
The type of client authentication to be used.
Specify certificate-authentication to use certificate-based authentication, or directory-service-authentication to use Active Directory authentication.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-type
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

### -ActiveDirectory
Information about the Active Directory to be used, if applicable.
You must provide this information if **Type** is directory-service-authentication.

Type: DirectoryServiceAuthenticationRequest
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-activedirectory
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.ClientVpnEndpoint.ClientAuthenticationRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html)

