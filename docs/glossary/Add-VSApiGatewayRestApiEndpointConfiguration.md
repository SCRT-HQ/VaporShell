# Add-VSApiGatewayRestApiEndpointConfiguration

## SYNOPSIS
Adds an AWS::ApiGateway::RestApi.EndpointConfiguration resource property to the template.
The EndpointConfiguration property type specifies the endpoint types of a REST API.

## SYNTAX

```
Add-VSApiGatewayRestApiEndpointConfiguration [[-Types] <Object>] [[-VpcEndpointIds] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::RestApi.EndpointConfiguration resource property to the template.
The EndpointConfiguration property type specifies the endpoint types of a REST API.

EndpointConfiguration is a property of the AWS::ApiGateway::RestApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html resource.

## PARAMETERS

### -Types
A list of endpoint types of an API or its custom domain name.
Valid values include:
+ EDGE: For an edge-optimized API and its custom domain name.
+ REGIONAL: For a regional API and its custom domain name.
+ PRIVATE: For a private API.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-types
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

### -VpcEndpointIds
A list of VPC endpoint IDs of an API AWS::ApiGateway::RestApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html against which to create Route53 ALIASes.
It is only supported for PRIVATE endpoint type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-vpcendpointids
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.ApiGateway.RestApi.EndpointConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html)

