# Add-VSGameLiftFleetCertificateConfiguration

## SYNOPSIS
Adds an AWS::GameLift::Fleet.CertificateConfiguration resource property to the template.
Information about the use of a TLS/SSL certificate for a fleet.
TLS certificate generation is enabled at the fleet level, with one certificate generated for the fleet.
When this feature is enabled, the certificate can be retrieved using the GameLift Server SDK call GetInstanceCertificate.
All instances in a fleet share the same certificate.

## SYNTAX

```
Add-VSGameLiftFleetCertificateConfiguration [-CertificateType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Fleet.CertificateConfiguration resource property to the template.
Information about the use of a TLS/SSL certificate for a fleet.
TLS certificate generation is enabled at the fleet level, with one certificate generated for the fleet.
When this feature is enabled, the certificate can be retrieved using the GameLift Server SDK call GetInstanceCertificate.
All instances in a fleet share the same certificate.

## PARAMETERS

### -CertificateType
Indicates whether a TLS/SSL certificate is generated for the fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html#cfn-gamelift-fleet-certificateconfiguration-certificatetype
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.GameLift.Fleet.CertificateConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-certificateconfiguration.html)

