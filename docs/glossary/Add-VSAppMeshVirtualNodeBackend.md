# Add-VSAppMeshVirtualNodeBackend

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.Backend resource property to the template.
An object representing the backends that a virtual node is expected to send outbound traffic to.

## SYNTAX

```
Add-VSAppMeshVirtualNodeBackend [[-VirtualService] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.Backend resource property to the template.
An object representing the backends that a virtual node is expected to send outbound traffic to.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -VirtualService
Specifies a virtual service to use as a backend for a virtual node.

Type: VirtualServiceBackend
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html#cfn-appmesh-virtualnode-backend-virtualservice
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppMesh.VirtualNode.Backend
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html)

