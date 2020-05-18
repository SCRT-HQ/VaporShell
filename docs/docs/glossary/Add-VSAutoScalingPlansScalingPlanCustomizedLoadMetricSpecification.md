# Add-VSAutoScalingPlansScalingPlanCustomizedLoadMetricSpecification

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.CustomizedLoadMetricSpecification resource property to the template.
CustomizedLoadMetricSpecification is a subproperty of ScalingInstruction: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html that specifies a customized load metric for predictive scaling to use with AWS Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanCustomizedLoadMetricSpecification [-MetricName] <Object> [-Statistic] <Object>
 [[-Dimensions] <Object>] [[-Unit] <Object>] [-Namespace] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.CustomizedLoadMetricSpecification resource property to the template.
CustomizedLoadMetricSpecification is a subproperty of ScalingInstruction: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html that specifies a customized load metric for predictive scaling to use with AWS Auto Scaling.

For predictive scaling to work with a customized load metric specification, AWS Auto Scaling needs access to the Sum and Average statistics that CloudWatch computes from metric data.

When you choose a load metric, make sure that the required Sum and Average statistics for your metric are available in CloudWatch and that they provide relevant data for predictive scaling.
The Sum statistic must represent the total load on the resource, and the Average statistic must represent the average load per capacity unit of the resource.
For example, there is a metric that counts the number of requests processed by your Auto Scaling group.
If the Sum statistic represents the total request count processed by the group, then the Average statistic for the specified metric must represent the average request count processed by each instance of the group.

If you publish your own metrics, you can aggregate the data points at a given interval and then publish the aggregated data points to CloudWatch.
Before AWS Auto Scaling generates the forecast, it sums up all the metric data points that occurred within each hour to match the granularity period that is used in the forecast (60 minutes.

For information about terminology, available metrics, or how to publish new metrics, see Amazon CloudWatch Concepts: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html in the *Amazon CloudWatch User Guide*.

After creating your scaling plan, you can use the AWS Auto Scaling console to visualize forecasts for the specified metric.
For more information, see View Scaling Information for a Resource: https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource in the *AWS Auto Scaling User Guide*.

## PARAMETERS

### -MetricName
The name of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-metricname
PrimitiveType: String
UpdateType: Mutable

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

### -Statistic
The statistic of the metric.
*Allowed Values*: Sum

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-statistic
PrimitiveType: String
UpdateType: Mutable

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

### -Dimensions
The dimensions of the metric.
Conditional: If you published your metric with dimensions, you must specify the same dimensions in your customized load metric specification.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-dimensions
ItemType: MetricDimension
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

### -Unit
The unit of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-unit
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

### -Namespace
The namespace of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-namespace
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

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.CustomizedLoadMetricSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html)

