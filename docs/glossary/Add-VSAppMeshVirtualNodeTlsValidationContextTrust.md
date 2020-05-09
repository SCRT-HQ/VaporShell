# Add-VSAppMeshVirtualNodeTlsValidationContextTrust

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.TlsValidationContextTrust resource property to the template.
An object that represents a Transport Layer Security (TLS validation context trust.

## SYNTAX

```
Add-VSAppMeshVirtualNodeTlsValidationContextTrust [[-ACM] <Object>] [[-File] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.TlsValidationContextTrust resource property to the template.
An object that represents a Transport Layer Security (TLS validation context trust.

## PARAMETERS

### -ACM
A reference to an object that represents a TLS validation context trust for an AWS Certicate Manager ACM certificate.

Type: TlsValidationContextAcmTrust
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-tlsvalidationcontexttrust-acm
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

### -File
An object that represents a TLS validation context trust for a local file.

Type: TlsValidationContextFileTrust
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html#cfn-appmesh-virtualnode-tlsvalidationcontexttrust-file
UpdateType: Mutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppMesh.VirtualNode.TlsValidationContextTrust
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontexttrust.html)

