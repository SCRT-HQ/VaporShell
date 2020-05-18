# Add-VSAutoScalingPlansScalingPlanPredefinedLoadMetricSpecification

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.PredefinedLoadMetricSpecification resource property to the template.
PredefinedLoadMetricSpecification is a subproperty of ScalingInstruction: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html that specifies a predefined load metric for predictive scaling to use with AWS Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanPredefinedLoadMetricSpecification [-PredefinedLoadMetricType] <Object>
 [[-ResourceLabel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.PredefinedLoadMetricSpecification resource property to the template.
PredefinedLoadMetricSpecification is a subproperty of ScalingInstruction: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html that specifies a predefined load metric for predictive scaling to use with AWS Auto Scaling.

After creating your scaling plan, you can use the AWS Auto Scaling console to visualize forecasts for the specified metric.
For more information, see View Scaling Information for a Resource: https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-create-scaling-plan.html#gs-view-resource in the *AWS Auto Scaling User Guide*.

## PARAMETERS

### -PredefinedLoadMetricType
The metric type.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedloadmetricspecification-predefinedloadmetrictype
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
You can't specify a resource label unless the metric type is ALBTargetGroupRequestCount and there is a target group for an Application Load Balancer attached to the Auto Scaling group.
The format is app/\<load-balancer-name\>/\<load-balancer-id\>/targetgroup/\<target-group-name\>/\<target-group-id\>, where:
+ app/\<load-balancer-name\>/\<load-balancer-id\> is the final portion of the load balancer ARN.
+ targetgroup/\<target-group-name\>/\<target-group-id\> is the final portion of the target group ARN.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedloadmetricspecification-resourcelabel
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

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.PredefinedLoadMetricSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html)

