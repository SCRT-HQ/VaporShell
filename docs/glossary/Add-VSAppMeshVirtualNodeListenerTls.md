# Add-VSAppMeshVirtualNodeListenerTls

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.ListenerTls resource property to the template.
An object that represents the Transport Layer Security (TLS properties for a listener.

## SYNTAX

```
Add-VSAppMeshVirtualNodeListenerTls [-Mode] <Object> [-Certificate] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.ListenerTls resource property to the template.
An object that represents the Transport Layer Security (TLS properties for a listener.

## PARAMETERS

### -Mode
Specify one of the following modes.
+ ****STRICT - Listener only accepts connections with TLS enabled.
+ ****PERMISSIVE - Listener accepts connections with or without TLS enabled.
+ ****DISABLED - Listener only accepts connections without TLS.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-mode
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

### -Certificate
A reference to an object that represents a listener's TLS certificate.

Type: ListenerTlsCertificate
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html#cfn-appmesh-virtualnode-listenertls-certificate
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

### Vaporshell.Resource.AppMesh.VirtualNode.ListenerTls
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertls.html)

