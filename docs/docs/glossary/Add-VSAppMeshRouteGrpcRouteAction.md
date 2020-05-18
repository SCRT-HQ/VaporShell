# Add-VSAppMeshRouteGrpcRouteAction

## SYNOPSIS
Adds an AWS::AppMesh::Route.GrpcRouteAction resource property to the template.
An object that represents the action to take if a match is determined.

## SYNTAX

```
Add-VSAppMeshRouteGrpcRouteAction [-WeightedTargets] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.GrpcRouteAction resource property to the template.
An object that represents the action to take if a match is determined.

## PARAMETERS

### -WeightedTargets
An object that represents the targets that traffic is routed to when a request matches the route.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html#cfn-appmesh-route-grpcrouteaction-weightedtargets
ItemType: WeightedTarget
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

### Vaporshell.Resource.AppMesh.Route.GrpcRouteAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html)

