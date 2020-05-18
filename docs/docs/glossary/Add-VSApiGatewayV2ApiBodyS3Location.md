# Add-VSApiGatewayV2ApiBodyS3Location

## SYNOPSIS
Adds an AWS::ApiGatewayV2::Api.BodyS3Location resource property to the template.
The BodyS3Location property specifies an S3 location from which to import an OpenAPI definition.
Supported only for HTTP APIs.

## SYNTAX

```
Add-VSApiGatewayV2ApiBodyS3Location [[-Etag] <Object>] [[-Bucket] <Object>] [[-Version] <Object>]
 [[-Key] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGatewayV2::Api.BodyS3Location resource property to the template.
The BodyS3Location property specifies an S3 location from which to import an OpenAPI definition.
Supported only for HTTP APIs.

## PARAMETERS

### -Etag
The Etag of the S3 object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-etag
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

### -Bucket
The S3 bucket that contains the OpenAPI definition to import.
Required if you specify a BodyS3Location for an API.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-bucket
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

### -Version
The version of the S3 object.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-version
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

### -Key
The key of the S3 object.
Required if you specify a BodyS3Location for an API.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-key
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGatewayV2.Api.BodyS3Location
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html)

