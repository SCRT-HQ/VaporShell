# Add-VSAppMeshVirtualServiceVirtualServiceProvider

## SYNOPSIS
Adds an AWS::AppMesh::VirtualService.VirtualServiceProvider resource property to the template.
An object representing the provider for a virtual service.

## SYNTAX

```
Add-VSAppMeshVirtualServiceVirtualServiceProvider [[-VirtualNode] <Object>] [[-VirtualRouter] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualService.VirtualServiceProvider resource property to the template.
An object representing the provider for a virtual service.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -VirtualNode
The virtual node associated with a virtual service.

Type: VirtualNodeServiceProvider
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualnode
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

### -VirtualRouter
The virtual router associated with a virtual service.

Type: VirtualRouterServiceProvider
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualrouter
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

### Vaporshell.Resource.AppMesh.VirtualService.VirtualServiceProvider
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html)

