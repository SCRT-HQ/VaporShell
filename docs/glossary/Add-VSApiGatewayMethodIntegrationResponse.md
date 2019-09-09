# Add-VSApiGatewayMethodIntegrationResponse

## SYNOPSIS
Adds an AWS::ApiGateway::Method.IntegrationResponse resource property to the template.
IntegrationResponse is a property of the Amazon API Gateway Method Integration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html property type that specifies the response that API Gateway sends after a method's backend finishes processing a request.

## SYNTAX

```
Add-VSApiGatewayMethodIntegrationResponse [[-ContentHandling] <Object>] [[-ResponseParameters] <Hashtable>]
 [[-ResponseTemplates] <Hashtable>] [[-SelectionPattern] <Object>] [-StatusCode] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::Method.IntegrationResponse resource property to the template.
IntegrationResponse is a property of the Amazon API Gateway Method Integration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html property type that specifies the response that API Gateway sends after a method's backend finishes processing a request.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ContentHandling
Specifies how to handle request payload content type conversions.
Valid values are:
+ CONVERT_TO_BINARY: Converts a request payload from a base64-encoded string to a binary blob.
+ CONVERT_TO_TEXT: Converts a request payload from a binary blob to a base64-encoded string.
If this property isn't defined, the request payload is passed through from the method request to the integration request without modification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integrationresponse-contenthandling
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

### -ResponseParameters
The response parameters from the backend response that API Gateway sends to the method response.
Specify response parameters as key-value pairs string-to-string mappings: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html.
Use the destination as the key and the source as the value:
+ The destination must be an existing response parameter in the MethodResponse: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html property.
+ The source must be an existing method request parameter or a static value.
You must enclose static values in single quotation marks and pre-encode these values based on the destination specified in the request.
For more information about templates, see API Gateway Mapping Template and Access Logging Variable Reference: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-responseparameters
DuplicatesAllowed: False
PrimitiveItemType: String
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

### -ResponseTemplates
The templates that are used to transform the integration response body.
Specify templates as key-value pairs string-to-string mappings, with a content type as the key and a template as the value.
For more information, see API Gateway Mapping Template and Access Logging Variable Reference: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-responsetemplates
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelectionPattern
A regular expression: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-regexes.html that specifies which error strings or status codes from the backend map to the integration response.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-selectionpattern
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

### -StatusCode
The status code that API Gateway uses to map the integration response to a MethodResponse: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html status code.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-statuscode
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.Method.IntegrationResponse
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html)

