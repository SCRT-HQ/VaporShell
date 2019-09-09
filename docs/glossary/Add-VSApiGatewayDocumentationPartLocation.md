# Add-VSApiGatewayDocumentationPartLocation

## SYNOPSIS
Adds an AWS::ApiGateway::DocumentationPart.Location resource property to the template.
The Location property specifies the location of the Amazon API Gateway API entity that the documentation applies to.
Location is a property of the AWS::ApiGateway::DocumentationPart: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html resource.

## SYNTAX

```
Add-VSApiGatewayDocumentationPartLocation [[-Method] <Object>] [[-Name] <Object>] [[-Path] <Object>]
 [[-StatusCode] <Object>] [[-Type] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::DocumentationPart.Location resource property to the template.
The Location property specifies the location of the Amazon API Gateway API entity that the documentation applies to.
Location is a property of the AWS::ApiGateway::DocumentationPart: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-documentationpart.html resource.

**Note**

For more information about each property, including constraints and valid values, see DocumentationPart: https://docs.aws.amazon.com/apigateway/api-reference/resource/documentation-part/#location in the *Amazon API Gateway REST API Reference*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Method
The HTTP verb of a method.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-method
PrimitiveType: String
UpdateType: Immutable

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

### -Name
The name of the targeted API entity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-name
PrimitiveType: String
UpdateType: Immutable

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

### -Path
The URL path of the target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-path
PrimitiveType: String
UpdateType: Immutable

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

### -StatusCode
The HTTP status code of a response.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-statuscode
PrimitiveType: String
UpdateType: Immutable

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

### -Type
The type of API entity that the documentation content applies to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html#cfn-apigateway-documentationpart-location-type
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.ApiGateway.DocumentationPart.Location
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-documentationpart-location.html)

