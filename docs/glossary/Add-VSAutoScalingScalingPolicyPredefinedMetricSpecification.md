# Add-VSAutoScalingScalingPolicyPredefinedMetricSpecification

## SYNOPSIS
Adds an AWS::AutoScaling::ScalingPolicy.PredefinedMetricSpecification resource property to the template.
PredefinedMetricSpecification is a subproperty of TargetTrackingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html that configures a predefined metric for a target tracking policy to use with Amazon EC2 Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingScalingPolicyPredefinedMetricSpecification [-PredefinedMetricType] <Object>
 [[-ResourceLabel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::ScalingPolicy.PredefinedMetricSpecification resource property to the template.
PredefinedMetricSpecification is a subproperty of TargetTrackingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html that configures a predefined metric for a target tracking policy to use with Amazon EC2 Auto Scaling.

## PARAMETERS

### -PredefinedMetricType
The metric type.
The following predefined metrics are available.
+  ASGAverageCPUUtilization - Average CPU utilization of the Auto Scaling group.
+  ASGAverageNetworkIn - Average number of bytes received on all network interfaces by the Auto Scaling group.
+  ASGAverageNetworkOut - Average number of bytes sent out on all network interfaces by the Auto Scaling group.
+  ALBRequestCountPerTarget - Number of requests completed per target in an Application Load Balancer target group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-autoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
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

### -ResourceLabel
Identifies the resource associated with the metric type.
You can't specify a resource label unless the metric type is ALBRequestCountPerTarget and there is a target group attached to the Auto Scaling group.
The format is app/load-balancer-name/load-balancer-id/targetgroup/target-group-name/target-group-id , where
+ app/load-balancer-name/load-balancer-id  is the final portion of the load balancer ARN, and
+ targetgroup/target-group-name/target-group-id  is the final portion of the target group ARN.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-autoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.ScalingPolicy.PredefinedMetricSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html)

