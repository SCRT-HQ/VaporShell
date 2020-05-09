# Add-VSAutoScalingScalingPolicyStepAdjustment

## SYNOPSIS
Adds an AWS::AutoScaling::ScalingPolicy.StepAdjustment resource property to the template.
StepAdjustments is a subproperty of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html that represents a step adjustment for a step scaling policy.

## SYNTAX

```
Add-VSAutoScalingScalingPolicyStepAdjustment [[-MetricIntervalLowerBound] <Object>]
 [[-MetricIntervalUpperBound] <Object>] [-ScalingAdjustment] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::ScalingPolicy.StepAdjustment resource property to the template.
StepAdjustments is a subproperty of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html that represents a step adjustment for a step scaling policy.

For the following examples, suppose that you have an alarm with a breach threshold of 50:

+ To trigger a step adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.

+ To trigger a step adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.

There are a few rules for the step adjustments for your step policy:

+ The ranges of your step adjustments can't overlap or have a gap.

+ At most one step adjustment can have a null lower bound.
If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.

+ At most one step adjustment can have a null upper bound.
If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.

+ The upper and lower bound can't be null in the same step adjustment.

For more information, see Step Adjustments: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps in the *Amazon EC2 Auto Scaling User Guide*.

You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#aws-properties-as-policy--examples section of the AWS::AutoScaling::ScalingPolicy documentation.

## PARAMETERS

### -MetricIntervalLowerBound
The lower bound for the difference between the alarm threshold and the CloudWatch metric.
If the metric value is above the breach threshold, the lower bound is inclusive the metric must be greater than or equal to the threshold plus the lower bound.
Otherwise, it is exclusive the metric must be greater than the threshold plus the lower bound.
A null value indicates negative infinity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervallowerbound
PrimitiveType: Double
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

### -MetricIntervalUpperBound
The upper bound for the difference between the alarm threshold and the CloudWatch metric.
If the metric value is above the breach threshold, the upper bound is exclusive the metric must be less than the threshold plus the upper bound.
Otherwise, it is inclusive the metric must be less than or equal to the threshold plus the upper bound.
A null value indicates positive infinity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervalupperbound
PrimitiveType: Double
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

### -ScalingAdjustment
The amount by which to scale.
The adjustment is based on the value that you specified in the AdjustmentType property either an absolute number or a percentage.
A positive value adds to the current capacity and a negative number subtracts from the current capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-scalingadjustment
PrimitiveType: Integer
UpdateType: Mutable

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

### Vaporshell.Resource.AutoScaling.ScalingPolicy.StepAdjustment
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html)

