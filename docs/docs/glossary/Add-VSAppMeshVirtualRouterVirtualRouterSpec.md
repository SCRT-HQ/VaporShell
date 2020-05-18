# Add-VSAppMeshVirtualRouterVirtualRouterSpec

## SYNOPSIS
Adds an AWS::AppMesh::VirtualRouter.VirtualRouterSpec resource property to the template.
An object that represents the specification of a virtual router.

## SYNTAX

```
Add-VSAppMeshVirtualRouterVirtualRouterSpec [-Listeners] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualRouter.VirtualRouterSpec resource property to the template.
An object that represents the specification of a virtual router.

## PARAMETERS

### -Listeners
The listeners that the virtual router is expected to receive inbound traffic from.
You can specify one listener.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html#cfn-appmesh-virtualrouter-virtualrouterspec-listeners
ItemType: VirtualRouterListener
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

### Vaporshell.Resource.AppMesh.VirtualRouter.VirtualRouterSpec
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html)

