# Add-VSApiGatewayUsagePlanQuotaSettings

## SYNOPSIS
Adds an AWS::ApiGateway::UsagePlan.QuotaSettings resource property to the template.
QuotaSettings is a property of the AWS::ApiGateway::UsagePlan: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html resource that specifies the maximum number of requests users can make to your REST APIs.

## SYNTAX

```
Add-VSApiGatewayUsagePlanQuotaSettings [[-Limit] <Int32>] [[-Offset] <Int32>] [[-Period] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApiGateway::UsagePlan.QuotaSettings resource property to the template.
QuotaSettings is a property of the AWS::ApiGateway::UsagePlan: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-usageplan.html resource that specifies the maximum number of requests users can make to your REST APIs.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Limit
The maximum number of requests that users can make within the specified time period.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-limit
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

### -Offset
For the initial time period, the number of requests to subtract from the specified limit.
When you first implement a usage plan, the plan might start in the middle of the week or month.
With this property, you can decrease the limit for this initial time period.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-offset
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Period
The time period for which the maximum limit of requests applies, such as DAY or WEEK.
For valid values, see the period property for the UsagePlan: https://docs.aws.amazon.com/apigateway/api-reference/resource/usage-plan resource in the *Amazon API Gateway REST API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-period
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

### Vaporshell.Resource.ApiGateway.UsagePlan.QuotaSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html)

