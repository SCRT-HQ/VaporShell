# Add-VSAppMeshVirtualNodeClientPolicyTls

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.ClientPolicyTls resource property to the template.
A reference to an object that represents a Transport Layer Security (TLS client policy.

## SYNTAX

```
Add-VSAppMeshVirtualNodeClientPolicyTls [-Validation] <Object> [[-Enforce] <Object>] [[-Ports] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.ClientPolicyTls resource property to the template.
A reference to an object that represents a Transport Layer Security (TLS client policy.

## PARAMETERS

### -Validation
A reference to an object that represents a TLS validation context.

Type: TlsValidationContext
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-validation
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

### -Enforce
Whether the policy is enforced.
The default is True, if a value isn't specified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-enforce
PrimitiveType: Boolean
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

### -Ports
One or more ports that the policy is enforced for.

PrimitiveItemType: Integer
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html#cfn-appmesh-virtualnode-clientpolicytls-ports
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

### Vaporshell.Resource.AppMesh.VirtualNode.ClientPolicyTls
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicytls.html)

