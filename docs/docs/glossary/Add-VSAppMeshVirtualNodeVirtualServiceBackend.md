# Add-VSAppMeshVirtualNodeVirtualServiceBackend

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.VirtualServiceBackend resource property to the template.
An object that represents a virtual service backend for a virtual node.

## SYNTAX

```
Add-VSAppMeshVirtualNodeVirtualServiceBackend [[-ClientPolicy] <Object>] [-VirtualServiceName] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.VirtualServiceBackend resource property to the template.
An object that represents a virtual service backend for a virtual node.

## PARAMETERS

### -ClientPolicy
A reference to an object that represents the client policy for a backend.

Type: ClientPolicy
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html#cfn-appmesh-virtualnode-virtualservicebackend-clientpolicy
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

### -VirtualServiceName
The name of the virtual service that is acting as a virtual node backend.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html#cfn-appmesh-virtualnode-virtualservicebackend-virtualservicename
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

### Vaporshell.Resource.AppMesh.VirtualNode.VirtualServiceBackend
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html)

