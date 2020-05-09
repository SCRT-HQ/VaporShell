# Add-VSApiGatewayV2IntegrationTlsConfig

## SYNOPSIS
Adds an AWS::ApiGatewayV2::Integration.TlsConfig resource property to the template.
The TlsConfig property specifies the TLS configuration for a private integration.
If you specify a TLS configuration, private integration traffic uses the HTTPS protocol.
Supported only for HTTP APIs.

## SYNTAX

```
Add-VSApiGatewayV2IntegrationTlsConfig [[-ServerNameToVerify] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGatewayV2::Integration.TlsConfig resource property to the template.
The TlsConfig property specifies the TLS configuration for a private integration.
If you specify a TLS configuration, private integration traffic uses the HTTPS protocol.
Supported only for HTTP APIs.

## PARAMETERS

### -ServerNameToVerify
If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate.
The server name is also included in the TLS handshake to support Server Name Indication SNI or virtual hosting.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html#cfn-apigatewayv2-integration-tlsconfig-servernametoverify
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGatewayV2.Integration.TlsConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html)

