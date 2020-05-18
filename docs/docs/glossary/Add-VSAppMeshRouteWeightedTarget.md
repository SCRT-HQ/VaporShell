# Add-VSAppMeshRouteWeightedTarget

## SYNOPSIS
Adds an AWS::AppMesh::Route.WeightedTarget resource property to the template.
An object that represents a target and its relative weight.
Traffic is distributed across targets according to their relative weight.
For example, a weighted target with a relative weight of 50 receives five times as much traffic as one with a relative weight of 10.
The total weight for all targets combined must be less than or equal to 100.

## SYNTAX

```
Add-VSAppMeshRouteWeightedTarget [-VirtualNode] <Object> [-Weight] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.WeightedTarget resource property to the template.
An object that represents a target and its relative weight.
Traffic is distributed across targets according to their relative weight.
For example, a weighted target with a relative weight of 50 receives five times as much traffic as one with a relative weight of 10.
The total weight for all targets combined must be less than or equal to 100.

## PARAMETERS

### -VirtualNode
The virtual node to associate with the weighted target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-virtualnode
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

### -Weight
The relative weight of the weighted target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-weight
PrimitiveType: Integer
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

### Vaporshell.Resource.AppMesh.Route.WeightedTarget
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html)

