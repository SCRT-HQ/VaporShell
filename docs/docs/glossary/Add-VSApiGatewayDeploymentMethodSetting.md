# Add-VSApiGatewayDeploymentMethodSetting

## SYNOPSIS
Adds an AWS::ApiGateway::Deployment.MethodSetting resource property to the template.
The MethodSetting property type configures settings for all methods in a stage.

## SYNTAX

```
Add-VSApiGatewayDeploymentMethodSetting [[-CacheDataEncrypted] <Object>] [[-CacheTtlInSeconds] <Object>]
 [[-CachingEnabled] <Object>] [[-DataTraceEnabled] <Object>] [[-HttpMethod] <Object>]
 [[-LoggingLevel] <Object>] [[-MetricsEnabled] <Object>] [[-ResourcePath] <Object>]
 [[-ThrottlingBurstLimit] <Object>] [[-ThrottlingRateLimit] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::Deployment.MethodSetting resource property to the template.
The MethodSetting property type configures settings for all methods in a stage.

The MethodSettings property of the Amazon API Gateway Deployment StageDescription: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription.html property type contains a list of MethodSetting property types.

## PARAMETERS

### -CacheDataEncrypted
Indicates whether the cached responses are encrypted.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachedataencrypted
PrimitiveType: Boolean
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

### -CacheTtlInSeconds
The time-to-live TTL period, in seconds, that specifies how long API Gateway caches responses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachettlinseconds
PrimitiveType: Integer
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

### -CachingEnabled
Indicates whether responses are cached and returned for requests.
You must enable a cache cluster on the stage to cache responses.
For more information, see Enable API Gateway Caching in a Stage to Enhance API Performance: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-cachingenabled
PrimitiveType: Boolean
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

### -DataTraceEnabled
Indicates whether data trace logging is enabled for methods in the stage.
API Gateway pushes these logs to Amazon CloudWatch Logs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-datatraceenabled
PrimitiveType: Boolean
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

### -HttpMethod
The HTTP method.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-httpmethod
PrimitiveType: String
UpdateType: Mutable

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

### -LoggingLevel
The logging level for this method.
For valid values, see the loggingLevel property of the Stage: https://docs.aws.amazon.com/apigateway/api-reference/resource/stage/#loggingLevel resource in the *Amazon API Gateway API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-logginglevel
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricsEnabled
Indicates whether Amazon CloudWatch metrics are enabled for methods in the stage.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-metricsenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourcePath
The resource path for this method.
Forward slashes / are encoded as ~1 and the initial slash must include a forward slash.
For example, the path value /resource/subresource must be encoded as /~1resource~1subresource.
To specify the root path, use only a slash /.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-resourcepath
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrottlingBurstLimit
The number of burst requests per second that API Gateway permits across all APIs, stages, and methods in your AWS account.
For more information, see Manage API Request Throttling: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-request-throttling.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-throttlingburstlimit
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrottlingRateLimit
The number of steady-state requests per second that API Gateway permits across all APIs, stages, and methods in your AWS account.
For more information, see Manage API Request Throttling: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-request-throttling.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html#cfn-apigateway-deployment-stagedescription-methodsetting-throttlingratelimit
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.Deployment.MethodSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-stagedescription-methodsetting.html)

