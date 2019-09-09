# Add-VSApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template.
TargetTrackingScalingPolicyConfiguration is a property of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html that specifies a target tracking scaling policy to use with Application Auto Scaling.
Use a target tracking scaling policy to adjust the capacity of the specified scalable target in response to actual workloads, so that resource utilization remains at or near the target utilization value.

## SYNTAX

```
Add-VSApplicationAutoScalingScalingPolicyTargetTrackingScalingPolicyConfiguration
 [[-CustomizedMetricSpecification] <Object>] [[-DisableScaleIn] <Boolean>]
 [[-PredefinedMetricSpecification] <Object>] [[-ScaleInCooldown] <Int32>] [[-ScaleOutCooldown] <Int32>]
 [-TargetValue] <Double> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration resource property to the template.
TargetTrackingScalingPolicyConfiguration is a property of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html that specifies a target tracking scaling policy to use with Application Auto Scaling.
Use a target tracking scaling policy to adjust the capacity of the specified scalable target in response to actual workloads, so that resource utilization remains at or near the target utilization value.

For more information, see PutScalingPolicy: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScalingPolicy.html in the *Application Auto Scaling API Reference*.
For more information about target tracking scaling policies, see Target Tracking Scaling Policies: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html in the *Application Auto Scaling User Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

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
If the value is true, scale in is disabled and the target tracking scaling policy won't remove capacity from the scalable resource.
Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-disablescalein
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
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
The amount of time, in seconds, after a scale-in activity completes before another scale in activity can start.
The cooldown period is used to block subsequent scale-in requests until it has expired.
The intention is to scale in conservatively to protect your application's availability.
However, if another alarm triggers a scale-out policy during the cooldown period after a scale-in, Application Auto Scaling scales out your scalable target immediately.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleincooldown
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScaleOutCooldown
The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.
While the cooldown period is in effect, the capacity that has been added by the previous scale-out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out.
The intention is to continuously but not excessively scale out.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleoutcooldown
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetValue
The target value for the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-targetvalue
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: 0
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

