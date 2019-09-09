# Add-VSAppMeshMeshEgressFilter

## SYNOPSIS
Adds an AWS::AppMesh::Mesh.EgressFilter resource property to the template.
An object representing the egress filter rules for a service mesh.

## SYNTAX

```
Add-VSAppMeshMeshEgressFilter [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Mesh.EgressFilter resource property to the template.
An object representing the egress filter rules for a service mesh.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The egress filter type.
By default, the type is DROP_ALL, which allows egress only from virtual nodes to other defined resources in the service mesh and any traffic to *.amazonaws.com for AWS API calls.
You can set the egress filter type to ALLOW_ALL to allow egress to any endpoint inside or outside of the service mesh.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html#cfn-appmesh-mesh-egressfilter-type
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

### Vaporshell.Resource.AppMesh.Mesh.EgressFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html)

