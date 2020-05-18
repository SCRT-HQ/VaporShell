# Add-VSAppMeshRouteHttpRetryPolicy

## SYNOPSIS
Adds an AWS::AppMesh::Route.HttpRetryPolicy resource property to the template.
An object that represents a retry policy.
Specify at least one value for at least one of the types of RetryEvents, a value for maxRetries, and a value for perRetryTimeout.

## SYNTAX

```
Add-VSAppMeshRouteHttpRetryPolicy [-MaxRetries] <Object> [-PerRetryTimeout] <Object>
 [[-HttpRetryEvents] <Object>] [[-TcpRetryEvents] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppMesh::Route.HttpRetryPolicy resource property to the template.
An object that represents a retry policy.
Specify at least one value for at least one of the types of RetryEvents, a value for maxRetries, and a value for perRetryTimeout.

## PARAMETERS

### -MaxRetries
The maximum number of retry attempts.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-maxretries
PrimitiveType: Integer
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

### -PerRetryTimeout
An object that represents a duration of time.

Type: Duration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-perretrytimeout
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

### -HttpRetryEvents
Specify at least one of the following values.
+ **server-error** - HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511
+ **gateway-error** - HTTP status codes 502, 503, and 504
+ **client-error** - HTTP status code 409
+ **stream-error** - Retry on refused stream

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-httpretryevents
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

### -TcpRetryEvents
Specify a valid value.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html#cfn-appmesh-route-httpretrypolicy-tcpretryevents
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppMesh.Route.HttpRetryPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpretrypolicy.html)

