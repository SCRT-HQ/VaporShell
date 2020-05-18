# Add-VSAutoScalingScalingPolicyTargetTrackingConfiguration

## SYNOPSIS
Adds an AWS::AutoScaling::ScalingPolicy.TargetTrackingConfiguration resource property to the template.
TargetTrackingConfiguration is a subproperty of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html that specifies a target tracking scaling policy to use with Amazon EC2 Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingScalingPolicyTargetTrackingConfiguration [[-CustomizedMetricSpecification] <Object>]
 [[-DisableScaleIn] <Object>] [[-PredefinedMetricSpecification] <Object>] [-TargetValue] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::ScalingPolicy.TargetTrackingConfiguration resource property to the template.
TargetTrackingConfiguration is a subproperty of ScalingPolicy: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html that specifies a target tracking scaling policy to use with Amazon EC2 Auto Scaling.

For more information, see PutScalingPolicy: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScalingPolicy.html in the *Amazon EC2 Auto Scaling API Reference*.
For more information about scaling policies, see Dynamic Scaling: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html in the *Amazon EC2 Auto Scaling User Guide*.

## PARAMETERS

### -CustomizedMetricSpecification
A customized metric.
You must specify either a predefined metric or a customized metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-customizedmetricspecification
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
Indicates whether scaling in by the target tracking scaling policy is disabled.
If scaling in is disabled, the target tracking scaling policy doesn't remove instances from the Auto Scaling group.
Otherwise, the target tracking scaling policy can remove instances from the Auto Scaling group.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-disablescalein
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
You must specify either a predefined metric or a customized metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-predefinedmetricspecification
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

### -TargetValue
The target value for the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-targetvalue
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.ScalingPolicy.TargetTrackingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html)

