# Add-VSAppMeshRouteHttpRouteAction

## SYNOPSIS
Adds an AWS::AppMesh::Route.HttpRouteAction resource property to the template.
An object representing the traffic distribution requirements for matched HTTP requests.

## SYNTAX

```
Add-VSAppMeshRouteHttpRouteAction [-WeightedTargets] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.HttpRouteAction resource property to the template.
An object representing the traffic distribution requirements for matched HTTP requests.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -WeightedTargets
The targets that traffic is routed to when a request matches the route.
You can specify one or more targets and their relative weights to distribute traffic with.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html#cfn-appmesh-route-httprouteaction-weightedtargets
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

### Vaporshell.Resource.AppMesh.Route.HttpRouteAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html)

