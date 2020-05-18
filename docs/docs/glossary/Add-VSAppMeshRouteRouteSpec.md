# Add-VSAppMeshRouteRouteSpec

## SYNOPSIS
Adds an AWS::AppMesh::Route.RouteSpec resource property to the template.
An object that represents a route specification.
Specify one route type.

## SYNTAX

```
Add-VSAppMeshRouteRouteSpec [[-HttpRoute] <Object>] [[-Priority] <Object>] [[-Http2Route] <Object>]
 [[-GrpcRoute] <Object>] [[-TcpRoute] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.RouteSpec resource property to the template.
An object that represents a route specification.
Specify one route type.

## PARAMETERS

### -HttpRoute
An object that represents the specification of an HTTP route.

Type: HttpRoute
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute
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

### -Priority
The priority for the route.
Routes are matched based on the specified value, where 0 is the highest priority.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-priority
PrimitiveType: Integer
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

### -Http2Route
An object that represents the specification of an HTTP/2 route.

Type: HttpRoute
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-http2route
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

### -GrpcRoute
An object that represents the specification of a gRPC route.

Type: GrpcRoute
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-grpcroute
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TcpRoute
An object that represents the specification of a TCP route.

Type: TcpRoute
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-tcproute
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppMesh.Route.RouteSpec
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html)

