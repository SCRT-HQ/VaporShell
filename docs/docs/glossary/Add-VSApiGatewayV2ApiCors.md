# Add-VSApiGatewayV2ApiCors

## SYNOPSIS
Adds an AWS::ApiGatewayV2::Api.Cors resource property to the template.
The Cors property specifies a CORS configuration for an API.
Supported only for HTTP APIs.
See Configuring CORS: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html for more information.

## SYNTAX

```
Add-VSApiGatewayV2ApiCors [[-AllowOrigins] <Object>] [[-AllowCredentials] <Object>] [[-ExposeHeaders] <Object>]
 [[-AllowHeaders] <Object>] [[-MaxAge] <Object>] [[-AllowMethods] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGatewayV2::Api.Cors resource property to the template.
The Cors property specifies a CORS configuration for an API.
Supported only for HTTP APIs.
See Configuring CORS: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html for more information.

## PARAMETERS

### -AllowOrigins
Represents a collection of allowed origins.
Supported only for HTTP APIs.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-alloworigins
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

### -AllowCredentials
Specifies whether credentials are included in the CORS request.
Supported only for HTTP APIs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowcredentials
PrimitiveType: Boolean
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

### -ExposeHeaders
Represents a collection of exposed headers.
Supported only for HTTP APIs.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-exposeheaders
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

### -AllowHeaders
Represents a collection of allowed headers.
Supported only for HTTP APIs.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowheaders
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

### -MaxAge
The number of seconds that the browser should cache preflight request results.
Supported only for HTTP APIs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-maxage
PrimitiveType: Integer
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

### -AllowMethods
Represents a collection of allowed HTTP methods.
Supported only for HTTP APIs.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowmethods
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGatewayV2.Api.Cors
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html)

