# Add-VSApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template.
TargetTrackingScalingPolicyConfiguration is a property of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html that specifies a target tracking scaling policy to use with Application Auto Scaling.
Use a target tracking scaling policy to adjust the capacity of the specified scalable target in response to actual workloads, so that resource utilization remains at or near the target utilization value.

## SYNTAX

```
Add-VSApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
 [[-CustomizedMetricSpecification] <Object>] [[-DisableScaleIn] <Object>]
 [[-PredefinedMetricSpecification] <Object>] [[-ScaleInCooldown] <Object>] [[-ScaleOutCooldown] <Object>]
 [-TargetValue] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template.
TargetTrackingScalingPolicyConfiguration is a property of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html that specifies a target tracking scaling policy to use with Application Auto Scaling.
Use a target tracking scaling policy to adjust the capacity of the specified scalable target in response to actual workloads, so that resource utilization remains at or near the target utilization value.

For more information, see PutScalingPolicy: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScalingPolicy.html in the *Application Auto Scaling API Reference*.
For more information about target tracking scaling policies, see Target Tracking Scaling Policies: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html in the *Application Auto Scaling User Guide*.

## PARAMETERS

### -CustomizedMetricSpecification
A customized metric.
You can specify either a predefined metric or a customized metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-customizedmetricspecification
Type: CustomizedMetricSpecification
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

### -DisableScaleIn
Indicates whether scale in by the target tracking scaling policy is disabled.
If the value is true, scale in is disabled and the target tracking scaling policy won't remove capacity from the scalable target.
Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable target.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-disablescalein
PrimitiveType: Boolean
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

### -PredefinedMetricSpecification
A predefined metric.
You can specify either a predefined metric or a customized metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-predefinedmetricspecification
Type: PredefinedMetricSpecification
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

### -ScaleInCooldown
The amount of time, in seconds, after a scale-in activity completes before another scale-in activity can start.
With the *scale-in cooldown period*, the intention is to scale in conservatively to protect your application's availability, so scale-in activities are blocked until the cooldown period has expired.
However, if another alarm triggers a scale-out activity during the scale-in cooldown period, Application Auto Scaling scales out the target immediately.
In this case, the scale-in cooldown period stops and doesn't complete.
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleincooldown
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

### -ScaleOutCooldown
The amount of time, in seconds, to wait for a previous scale-out activity to take effect.
With the *scale-out cooldown period*, the intention is to continuously but not excessively scale out.
After Application Auto Scaling successfully scales out using a target tracking scaling policy, it starts to calculate the cooldown time.
While the scale-out cooldown period is in effect, the capacity added by the initiating scale-out activity is calculated as part of the desired capacity for the next scale-out activity.
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleoutcooldown
PrimitiveType: Integer
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

### -TargetValue
The target value for the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-targetvalue
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html)

