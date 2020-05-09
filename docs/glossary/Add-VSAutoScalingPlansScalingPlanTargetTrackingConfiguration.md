# Add-VSAutoScalingPlansScalingPlanTargetTrackingConfiguration

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.TargetTrackingConfiguration resource property to the template.
TargetTrackingConfiguration is a subproperty of ScalingInstruction: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html that specifies a target tracking configuration to use with AWS Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanTargetTrackingConfiguration [[-ScaleOutCooldown] <Object>]
 [-TargetValue] <Object> [[-PredefinedScalingMetricSpecification] <Object>] [[-DisableScaleIn] <Object>]
 [[-ScaleInCooldown] <Object>] [[-EstimatedInstanceWarmup] <Object>]
 [[-CustomizedScalingMetricSpecification] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.TargetTrackingConfiguration resource property to the template.
TargetTrackingConfiguration is a subproperty of ScalingInstruction: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html that specifies a target tracking configuration to use with AWS Auto Scaling.

## PARAMETERS

### -ScaleOutCooldown
The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start.
This value is not used if the scalable resource is an Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleoutcooldown
PrimitiveType: Integer
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

### -TargetValue
The target value for the metric.
The range is 8.515920e-109 to 1.174271e+108 Base 10 or 2e-360 to 2e360 Base 2.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-targetvalue
PrimitiveType: Double
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

### -PredefinedScalingMetricSpecification
A predefined metric.
You can specify either a predefined metric or a customized metric.

Type: PredefinedScalingMetricSpecification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-predefinedscalingmetricspecification
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

### -DisableScaleIn
Indicates whether scale in by the target tracking scaling policy is disabled.
If the value is true, scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource.
Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.
The default value is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-disablescalein
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

### -ScaleInCooldown
The amount of time, in seconds, after a scale-in activity completes before another scale in activity can start.
This value is not used if the scalable resource is an Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleincooldown
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

### -EstimatedInstanceWarmup
The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
This value is used only if the resource is an Auto Scaling group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-estimatedinstancewarmup
PrimitiveType: Integer
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

### -CustomizedScalingMetricSpecification
A customized metric.
You can specify either a predefined metric or a customized metric.

Type: CustomizedScalingMetricSpecification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-customizedscalingmetricspecification
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.TargetTrackingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html)

