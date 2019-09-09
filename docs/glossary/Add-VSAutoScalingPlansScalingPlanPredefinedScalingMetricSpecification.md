# Add-VSAutoScalingPlansScalingPlanPredefinedScalingMetricSpecification

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.PredefinedScalingMetricSpecification resource property to the template.
PredefinedScalingMetricSpecification is a subproperty of TargetTrackingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html that specifies a customized scaling metric for a target tracking configuration to use with AWS Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanPredefinedScalingMetricSpecification [[-ResourceLabel] <Object>]
 [-PredefinedScalingMetricType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.PredefinedScalingMetricSpecification resource property to the template.
PredefinedScalingMetricSpecification is a subproperty of TargetTrackingConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html that specifies a customized scaling metric for a target tracking configuration to use with AWS Auto Scaling.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ResourceLabel
Identifies the resource associated with the metric type.
You can't specify a resource label unless the metric type is ALBRequestCountPerTarget and there is a target group for an Application Load Balancer attached to the Auto Scaling group, Spot Fleet request, or ECS service.
The format is app/\<load-balancer-name\>/\<load-balancer-id\>/targetgroup/\<target-group-name\>/\<target-group-id\>, where:
+ app/\<load-balancer-name\>/\<load-balancer-id\> is the final portion of the load balancer ARN.
+ targetgroup/\<target-group-name\>/\<target-group-id\> is the final portion of the target group ARN.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-resourcelabel
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

### -PredefinedScalingMetricType
The metric type.
The ALBRequestCountPerTarget metric type applies only to Auto Scaling groups, Spot Fleet requests, and ECS services.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-predefinedscalingmetrictype
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.PredefinedScalingMetricSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html)

