# Add-VSApplicationAutoScalingScalingPolicyPredefinedMetricSpecification

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.PredefinedMetricSpecification resource property to the template.
PredefinedMetricSpecification is a subproperty of TargetTrackingScalingPolicyConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html that configures a predefined metric for a target tracking scaling policy to use with Application Auto Scaling.

## SYNTAX

```
Add-VSApplicationAutoScalingScalingPolicyPredefinedMetricSpecification [-PredefinedMetricType] <Object>
 [[-ResourceLabel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalingPolicy.PredefinedMetricSpecification resource property to the template.
PredefinedMetricSpecification is a subproperty of TargetTrackingScalingPolicyConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html that configures a predefined metric for a target tracking scaling policy to use with Application Auto Scaling.

For more information, see PredefinedMetricSpecification: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PredefinedMetricSpecification.html in the *Application Auto Scaling API Reference*.

## PARAMETERS

### -PredefinedMetricType
The metric type.
The ALBRequestCountPerTarget metric type applies only to Spot fleet requests and ECS services.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
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
You can't specify a resource label unless the metric type is ALBRequestCountPerTarget and there is a target group attached to the Spot Fleet request or ECS service.
The format is app/\<load-balancer-name\>/\<load-balancer-id\>/targetgroup/\<target-group-name\>/\<target-group-id\>, where:
+ app/\<load-balancer-name\>/\<load-balancer-id\> is the final portion of the load balancer ARN
+ targetgroup/\<target-group-name\>/\<target-group-id\> is the final portion of the target group ARN.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
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

### Vaporshell.Resource.ApplicationAutoScaling.ScalingPolicy.PredefinedMetricSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html)

