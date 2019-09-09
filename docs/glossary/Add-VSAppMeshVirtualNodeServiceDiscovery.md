# Add-VSAppMeshVirtualNodeServiceDiscovery

## SYNOPSIS
Adds an AWS::AppMesh::VirtualNode.ServiceDiscovery resource property to the template.
An object representing the service discovery information for a virtual node.

## SYNTAX

```
Add-VSAppMeshVirtualNodeServiceDiscovery [[-DNS] <Object>] [[-AWSCloudMap] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::VirtualNode.ServiceDiscovery resource property to the template.
An object representing the service discovery information for a virtual node.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DNS
Specifies the DNS information for the virtual node.

Type: DnsServiceDiscovery
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-dns
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

### -AWSCloudMap
Specifies any AWS Cloud Map information for the virtual node.

Type: AwsCloudMapServiceDiscovery
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-awscloudmap
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

### Vaporshell.Resource.AppMesh.VirtualNode.ServiceDiscovery
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html)

