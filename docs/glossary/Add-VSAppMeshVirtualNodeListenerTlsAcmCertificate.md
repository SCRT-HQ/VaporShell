# Add-VSAppMeshVirtualNodeListenerTlsAcmCertificate

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.ListenerTlsAcmCertificate resource property to the template.
An object that represents an AWS Certicate Manager (ACM certificate.

## SYNTAX

```
Add-VSAppMeshVirtualNodeListenerTlsAcmCertificate [-CertificateArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.ListenerTlsAcmCertificate resource property to the template.
An object that represents an AWS Certicate Manager (ACM certificate.

## PARAMETERS

### -CertificateArn
The Amazon Resource Name ARN for the certificate.
The certificate must meet specific requirements and you must have proxy authorization enabled.
For more information, see Transport Layer Security TLS: https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html#virtual-node-tls-prerequisites.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html#cfn-appmesh-virtualnode-listenertlsacmcertificate-certificatearn
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

### Vaporshell.Resource.AppMesh.VirtualNode.ListenerTlsAcmCertificate
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html)

