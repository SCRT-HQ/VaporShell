# Add-VSAutoScalingPlansScalingPlanMetricDimension

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.MetricDimension resource property to the template.
MetricDimension is a subproperty of CustomizedScalingMetricSpecification: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html that specifies a dimension for a customized metric to use with AWS Auto Scaling.
Dimensions are arbitrary name/value pairs that can be associated with a CloudWatch metric.
Duplicate dimensions are not allowed.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanMetricDimension [-Value] <Object> [-Name] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.MetricDimension resource property to the template.
MetricDimension is a subproperty of CustomizedScalingMetricSpecification: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html that specifies a dimension for a customized metric to use with AWS Auto Scaling.
Dimensions are arbitrary name/value pairs that can be associated with a CloudWatch metric.
Duplicate dimensions are not allowed.

## PARAMETERS

### -Value
The value of the dimension.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html#cfn-autoscalingplans-scalingplan-metricdimension-value
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

### -Name
The name of the dimension.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html#cfn-autoscalingplans-scalingplan-metricdimension-name
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

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.MetricDimension
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html)

