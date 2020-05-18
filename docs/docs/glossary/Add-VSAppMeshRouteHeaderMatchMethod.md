# Add-VSAppMeshRouteHeaderMatchMethod

## SYNOPSIS
Adds an AWS::AppMesh::Route.HeaderMatchMethod resource property to the template.
An object that represents the method and value to match with the header value sent in a request.
Specify one match method.

## SYNTAX

```
Add-VSAppMeshRouteHeaderMatchMethod [[-Suffix] <Object>] [[-Regex] <Object>] [[-Exact] <Object>]
 [[-Prefix] <Object>] [[-Range] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.HeaderMatchMethod resource property to the template.
An object that represents the method and value to match with the header value sent in a request.
Specify one match method.

## PARAMETERS

### -Suffix
The value sent by the client must end with the specified characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-suffix
PrimitiveType: String
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

### -Regex
The value sent by the client must include the specified characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-regex
PrimitiveType: String
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

### -Exact
The value sent by the client must match the specified value exactly.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-exact
PrimitiveType: String
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

### -Prefix
The value sent by the client must begin with the specified characters.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-prefix
PrimitiveType: String
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

### -Range
An object that represents the range of values to match on.

Type: MatchRange
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-range
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

### Vaporshell.Resource.AppMesh.Route.HeaderMatchMethod
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html)

