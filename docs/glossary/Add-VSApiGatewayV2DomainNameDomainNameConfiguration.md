# Add-VSApiGatewayV2DomainNameDomainNameConfiguration

## SYNOPSIS
Adds an AWS::ApiGatewayV2::DomainName.DomainNameConfiguration resource property to the template.
The DomainNameConfiguration property type specifies the configuration for a an API's domain name.

## SYNTAX

```
Add-VSApiGatewayV2DomainNameDomainNameConfiguration [[-EndpointType] <Object>] [[-CertificateName] <Object>]
 [[-CertificateArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGatewayV2::DomainName.DomainNameConfiguration resource property to the template.
The DomainNameConfiguration property type specifies the configuration for a an API's domain name.

DomainNameConfiguration is a property of the AWS::ApiGatewayV2::DomainName: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html resource.

## PARAMETERS

### -EndpointType
The endpoint type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-endpointtype
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

### -CertificateName
The user-friendly name of the certificate that will be used by the edge-optimized endpoint for this domain name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatename
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

### -CertificateArn
An AWS-managed certificate that will be used by the edge-optimized endpoint for this domain name.
AWS Certificate Manager is the only supported source.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatearn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGatewayV2.DomainName.DomainNameConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html)

