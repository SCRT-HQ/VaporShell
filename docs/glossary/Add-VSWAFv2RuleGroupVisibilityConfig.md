# Add-VSWAFv2RuleGroupVisibilityConfig

## SYNOPSIS
Adds an AWS::WAFv2::RuleGroup.VisibilityConfig resource property to the template.
**Note**

## SYNTAX

```
Add-VSWAFv2RuleGroupVisibilityConfig [-SampledRequestsEnabled] <Object> [-CloudWatchMetricsEnabled] <Object>
 [-MetricName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::WAFv2::RuleGroup.VisibilityConfig resource property to the template.
**Note**

This is the latest version of **AWS WAF**, named AWS WAFV2, released in November, 2019.
For information, including how to migrate your AWS WAF resources from the prior release, see the AWS WAF Developer Guide: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html.

Defines and enables Amazon CloudWatch metrics and web request sample collection.

## PARAMETERS

### -SampledRequestsEnabled
A boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules.
You can view the sampled requests through the AWS WAF console.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-sampledrequestsenabled
UpdateType: Mutable
PrimitiveType: Boolean

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CloudWatchMetricsEnabled
A boolean indicating whether the associated resource sends metrics to CloudWatch.
For the list of available metrics, see AWS WAF Metrics: https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-cloudwatchmetricsenabled
UpdateType: Mutable
PrimitiveType: Boolean

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricName
A friendly name of the CloudWatch metric.
The name can contain only alphanumeric characters A-Z, a-z, 0-9, with length from one to 128 characters.
It can't contain whitespace or metric names reserved for AWS WAF, for example "All" and "Default_Action." You can't change a MetricName after you create a VisibilityConfig.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-metricname
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.WAFv2.RuleGroup.VisibilityConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html)

