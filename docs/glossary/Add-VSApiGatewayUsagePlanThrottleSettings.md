# Add-VSApiGatewayUsagePlanThrottleSettings

## SYNOPSIS
Adds an AWS::ApiGateway::UsagePlan.ThrottleSettings resource property to the template.
ThrottleSettings is a property of the AWS::ApiGateway::UsagePlan: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html resource that specifies the overall request rate (average requests per second and burst capacity when users call your REST APIs.

## SYNTAX

```
Add-VSApiGatewayUsagePlanThrottleSettings [[-BurstLimit] <Int32>] [[-RateLimit] <Double>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::UsagePlan.ThrottleSettings resource property to the template.
ThrottleSettings is a property of the AWS::ApiGateway::UsagePlan: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html resource that specifies the overall request rate (average requests per second and burst capacity when users call your REST APIs.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BurstLimit
The maximum API request rate limit over a time ranging from one to a few seconds.
The maximum API request rate limit depends on whether the underlying token bucket is at its full capacity.
For more information about request throttling, see Manage API Request Throttling: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-request-throttling.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-burstlimit
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RateLimit
The API request steady-state rate limit average requests per second over an extended period of time.
For more information about request throttling, see Manage API Request Throttling: https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-request-throttling.html in the *API Gateway Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html#cfn-apigateway-usageplan-throttlesettings-ratelimit
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApiGateway.UsagePlan.ThrottleSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-throttlesettings.html)

