# Add-VSApiGatewayRestApiS3Location

## SYNOPSIS
Adds an AWS::ApiGateway::RestApi.S3Location resource property to the template.
S3Location is a property of the AWS::ApiGateway::RestApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html resource that specifies the Amazon S3 location of a OpenAPI (formerly Swagger file that defines a set of RESTful APIs in JSON or YAML.

## SYNTAX

```
Add-VSApiGatewayRestApiS3Location [[-Bucket] <Object>] [[-ETag] <Object>] [[-Key] <Object>]
 [[-Version] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::RestApi.S3Location resource property to the template.
S3Location is a property of the AWS::ApiGateway::RestApi: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html resource that specifies the Amazon S3 location of a OpenAPI (formerly Swagger file that defines a set of RESTful APIs in JSON or YAML.

**Note**

On January 1, 2016, the Swagger Specification was donated to the OpenAPI initiative: https://www.openapis.org/, becoming the foundation of the OpenAPI Specification.

## PARAMETERS

### -Bucket
The name of the S3 bucket where the OpenAPI file is stored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-bucket
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

### -ETag
The Amazon S3 ETag a file checksum of the OpenAPI file.
If you don't specify a value, API Gateway skips ETag validation of your OpenAPI file.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-etag
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

### -Key
The file name of the OpenAPI file Amazon S3 object name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-key
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

### -Version
For versioning-enabled buckets, a specific version of the OpenAPI file.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-version
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

### Vaporshell.Resource.ApiGateway.RestApi.S3Location
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html)

