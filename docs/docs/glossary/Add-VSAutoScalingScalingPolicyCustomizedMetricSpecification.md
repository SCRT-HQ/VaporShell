# Add-VSAutoScalingScalingPolicyCustomizedMetricSpecification

## SYNOPSIS
Adds an AWS::AutoScaling::ScalingPolicy.CustomizedMetricSpecification resource property to the template.
CustomizedMetricSpecification is a subproperty of TargetTrackingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html that configures a customized metric for a target tracking policy to use with Amazon EC2 Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingScalingPolicyCustomizedMetricSpecification [[-Dimensions] <Object>] [-MetricName] <Object>
 [-Namespace] <Object> [-Statistic] <Object> [[-Unit] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::ScalingPolicy.CustomizedMetricSpecification resource property to the template.
CustomizedMetricSpecification is a subproperty of TargetTrackingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html that configures a customized metric for a target tracking policy to use with Amazon EC2 Auto Scaling.

For more information, see CustomizedMetricSpecification: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CustomizedMetricSpecification.html in the *Amazon EC2 Auto Scaling API Reference*.

## PARAMETERS

### -Dimensions
The dimensions of the metric.
Conditional: If you published your metric with dimensions, you must specify the same dimensions in your scaling policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-dimensions
DuplicatesAllowed: False
ItemType: MetricDimension
Type: List
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

### -MetricName
The name of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-metricname
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

### -Namespace
The namespace of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-namespace
PrimitiveType: String
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

### -Statistic
The statistic of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-statistic
PrimitiveType: String
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

### -Unit
The unit of the metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-unit
PrimitiveType: String
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

### Vaporshell.Resource.AutoScaling.ScalingPolicy.CustomizedMetricSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html)

