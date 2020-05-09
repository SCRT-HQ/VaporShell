# Add-VSApiGatewayV2AuthorizerJWTConfiguration

## SYNOPSIS
Adds an AWS::ApiGatewayV2::Authorizer.JWTConfiguration resource property to the template.
The JWTConfiguration property specifies the configuration of a JWT authorizer.
Required for the JWT authorizer type.
Supported only for HTTP APIs.

## SYNTAX

```
Add-VSApiGatewayV2AuthorizerJWTConfiguration [[-Issuer] <Object>] [[-Audience] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGatewayV2::Authorizer.JWTConfiguration resource property to the template.
The JWTConfiguration property specifies the configuration of a JWT authorizer.
Required for the JWT authorizer type.
Supported only for HTTP APIs.

## PARAMETERS

### -Issuer
The base domain of the identity provider that issues JSON Web Tokens.
For example, an Amazon Cognito user pool has the following format: https://cognito-idp.{region}.amazonaws.com/{userPoolId} .
Required for the JWT authorizer type.
Supported only for HTTP APIs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-issuer
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

### -Audience
A list of the intended recipients of the JWT.
A valid JWT must provide an aud that matches at least one entry in this list.
See RFC 7519: https://tools.ietf.org/html/rfc7519#section-4.1.3.
Required for the JWT authorizer type.
Supported only for HTTP APIs.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-audience
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

### Vaporshell.Resource.ApiGatewayV2.Authorizer.JWTConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html)

