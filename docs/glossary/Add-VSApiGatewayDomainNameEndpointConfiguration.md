# Add-VSApiGatewayDomainNameEndpointConfiguration

## SYNOPSIS
Adds an AWS::ApiGateway::DomainName.EndpointConfiguration resource property to the template.
The EndpointConfiguration property type specifies the endpoint types of an Amazon API Gateway domain name.

## SYNTAX

```
Add-VSApiGatewayDomainNameEndpointConfiguration [[-Types] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::DomainName.EndpointConfiguration resource property to the template.
The EndpointConfiguration property type specifies the endpoint types of an Amazon API Gateway domain name.

EndpointConfiguration is a property of the AWS::ApiGateway::DomainName: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Types
A list of endpoint types of an API or its custom domain name.
For an edge-optimized API and its custom domain name, the endpoint type is EDGE.
For a regional API and its custom domain name, the endpoint type is REGIONAL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html#cfn-apigateway-domainname-endpointconfiguration-types
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.ApiGateway.DomainName.EndpointConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-endpointconfiguration.html)

