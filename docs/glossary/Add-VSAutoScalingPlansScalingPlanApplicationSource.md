# Add-VSAutoScalingPlansScalingPlanApplicationSource

## SYNOPSIS
Adds an AWS::AutoScalingPlans::ScalingPlan.ApplicationSource resource property to the template.
ApplicationSource is a property of ScalingPlan: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html that specifies the application source to use with AWS Auto Scaling.
You can create one scaling plan per application source.

## SYNTAX

```
Add-VSAutoScalingPlansScalingPlanApplicationSource [[-CloudFormationStackARN] <Object>]
 [[-TagFilters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScalingPlans::ScalingPlan.ApplicationSource resource property to the template.
ApplicationSource is a property of ScalingPlan: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html that specifies the application source to use with AWS Auto Scaling.
You can create one scaling plan per application source.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CloudFormationStackARN
The Amazon Resource Name ARN of a CloudFormation stack.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html#cfn-autoscalingplans-scalingplan-applicationsource-cloudformationstackarn
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

### -TagFilters
A set of tags up to 50.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html#cfn-autoscalingplans-scalingplan-applicationsource-tagfilters
ItemType: TagFilter
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

### Vaporshell.Resource.AutoScalingPlans.ScalingPlan.ApplicationSource
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html)

