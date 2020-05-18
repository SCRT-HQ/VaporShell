# Add-VSApiGatewayMethodMethodResponse

## SYNOPSIS
Adds an AWS::ApiGateway::Method.MethodResponse resource property to the template.
MethodResponse is a property of the AWS::ApiGateway::Method: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html resource that defines the responses that can be sent to the client that calls a method.

## SYNTAX

```
Add-VSApiGatewayMethodMethodResponse [[-ResponseModels] <Hashtable>] [[-ResponseParameters] <Hashtable>]
 [-StatusCode] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::Method.MethodResponse resource property to the template.
MethodResponse is a property of the AWS::ApiGateway::Method: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html resource that defines the responses that can be sent to the client that calls a method.

## PARAMETERS

### -ResponseModels
The resources used for the response's content type.
Specify response models as key-value pairs string-to-string maps, with a content type as the key and a Model: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html resource name as the value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responsemodels
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResponseParameters
Response parameters that API Gateway sends to the client that called a method.
Specify response parameters as key-value pairs string-to-Boolean maps, with a destination as the key and a Boolean as the value.
Specify the destination using the following pattern: method.response.header.name, where *name* is a valid, unique header name.
The Boolean specifies whether a parameter is required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responseparameters
DuplicatesAllowed: False
PrimitiveItemType: Boolean
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatusCode
The method response's status code, which you map to an IntegrationResponse: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-statuscode
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.Method.MethodResponse
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html)

