# Add-VSApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.StepScalingPolicyConfiguration resource property to the template.
StepScalingPolicyConfiguration is a property of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html that specifies a step scaling policy configuration to use with Application Auto Scaling.

## SYNTAX

```
Add-VSApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration [[-AdjustmentType] <Object>]
 [[-Cooldown] <Object>] [[-MetricAggregationType] <Object>] [[-MinAdjustmentMagnitude] <Object>]
 [[-StepAdjustments] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.StepScalingPolicyConfiguration resource property to the template.
StepScalingPolicyConfiguration is a property of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html that specifies a step scaling policy configuration to use with Application Auto Scaling.

For more information, see PutScalingPolicy: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScalingPolicy.html in the *Application Auto Scaling API Reference*.
For more information about step scaling policies, see Step Scaling Policies: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html in the *Application Auto Scaling User Guide*.

## PARAMETERS

### -AdjustmentType
Specifies whether the ScalingAdjustment value in the StepAdjustment property is an absolute number or a percentage of the current capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-adjustmenttype
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

### -Cooldown
The amount of time, in seconds, to wait for a previous scaling activity to take effect.
With scale-out policies, the intention is to continuously but not excessively scale out.
After Application Auto Scaling successfully scales out using a step scaling policy, it starts to calculate the cooldown time.
While the cooldown period is in effect, capacity added by the initiating scale-out activity is calculated as part of the desired capacity for the next scale-out activity.
For example, when an alarm triggers a step scaling policy to increase the capacity by 2, the scaling activity completes successfully, and a cooldown period starts.
If the alarm triggers again during the cooldown period but at a more aggressive step adjustment of 3, the previous increase of 2 is considered part of the current capacity.
Therefore, only 1 is added to the capacity.
With scale-in policies, the intention is to scale in conservatively to protect your application's availability, so scale-in activities are blocked until the cooldown period has expired.
However, if another alarm triggers a scale-out activity during the cooldown period after a scale-in activity, Application Auto Scaling scales out the target immediately.
In this case, the cooldown period for the scale-in activity stops and doesn't complete.
Application Auto Scaling provides a default value of 300 for the following scalable targets:
+ ECS services
+ Spot Fleet requests
+ EMR clusters
+ AppStream 2.0 fleets
+ Aurora DB clusters
+ Amazon SageMaker endpoint variants
+ Custom resources
For all other scalable targets, the default value is 0:
+ DynamoDB tables
+ DynamoDB global secondary indexes
+ Amazon Comprehend document classification endpoints
+ Lambda provisioned concurrency
+ Amazon Keyspaces tables

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-cooldown
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

### -MetricAggregationType
The aggregation type for the CloudWatch metrics.
Valid values are Minimum, Maximum, and Average.
If the aggregation type is null, the value is treated as Average.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-metricaggregationtype
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

### -MinAdjustmentMagnitude
The minimum value to scale by when scaling by percentages.
For example, suppose that you create a step scaling policy to scale out an Amazon ECS service by 25 percent and you specify a MinAdjustmentMagnitude of 2.
If the service has 4 tasks and the scaling policy is performed, 25 percent of 4 is 1.
However, because you specified a MinAdjustmentMagnitude of 2, Application Auto Scaling scales out the service by 2 tasks.
Valid only if the adjustment type is PercentChangeInCapacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-minadjustmentmagnitude
PrimitiveType: Integer
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

### -StepAdjustments
A set of adjustments that enable you to scale based on the size of the alarm breach.
At least one step adjustment is required if you are adding a new step scaling policy configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustments
DuplicatesAllowed: False
ItemType: StepAdjustment
Type: List
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.StepScalingPolicyConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html)

