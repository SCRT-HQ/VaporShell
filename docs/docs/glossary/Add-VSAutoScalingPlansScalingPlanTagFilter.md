# Add-VSAutoScalingPlansScalingPlanTagFilter

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.TagFilter resource property to the template.
TagFilter is a subproperty of ApplicationSource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html that specifies a tag for an application source to use with AWS Auto Scaling.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanTagFilter [[-Values] <Object>] [-Key] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.TagFilter resource property to the template.
TagFilter is a subproperty of ApplicationSource: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html that specifies a tag for an application source to use with AWS Auto Scaling.

## PARAMETERS

### -Values
The tag values 0 to 20.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-values
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

### -Key
The tag key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-key
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

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.TagFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html)

