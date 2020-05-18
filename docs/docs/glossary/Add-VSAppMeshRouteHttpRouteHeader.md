# Add-VSAppMeshRouteHttpRouteHeader

## SYNOPSIS
Adds an AWS::AppMesh::Route.HttpRouteHeader resource property to the template.
An object that represents the HTTP header in the request.

## SYNTAX

```
Add-VSAppMeshRouteHttpRouteHeader [[-Invert] <Object>] [-Name] <Object> [[-Match] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.HttpRouteHeader resource property to the template.
An object that represents the HTTP header in the request.

## PARAMETERS

### -Invert
Specify True to match anything except the match criteria.
The default value is False.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-invert
PrimitiveType: Boolean
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

### -Name
A name for the HTTP header in the client request that will be matched on.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-name
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

### -Match
The HeaderMatchMethod object.

Type: HeaderMatchMethod
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-match
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

### Vaporshell.Resource.AppMesh.Route.HttpRouteHeader
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html)

