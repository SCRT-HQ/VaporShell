# Add-VSAutoScalingAutoScalingGroupMetricsCollection

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup.MetricsCollection resource property to the template.
MetricsCollection is a property of AWS::AutoScaling::AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html that describes the group metrics that an Amazon EC2 Auto Scaling group sends to Amazon CloudWatch.
These metrics describe the group rather than any of its instances.

## SYNTAX

```
Add-VSAutoScalingAutoScalingGroupMetricsCollection [-Granularity] <Object> [[-Metrics] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup.MetricsCollection resource property to the template.
MetricsCollection is a property of AWS::AutoScaling::AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html that describes the group metrics that an Amazon EC2 Auto Scaling group sends to Amazon CloudWatch.
These metrics describe the group rather than any of its instances.

For more information, see Monitoring Your Auto Scaling Groups and Instances Using Amazon CloudWatch: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html in the *Amazon EC2 Auto Scaling User Guide*.
You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#aws-properties-as-group--examples section of the AWS::AutoScaling::AutoScalingGroup documentation.

## PARAMETERS

### -Granularity
The frequency at which Amazon EC2 Auto Scaling sends aggregated data to CloudWatch.
*Allowed Values*: 1Minute

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-granularity
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

### -Metrics
The list of Auto Scaling group metrics to collect.
If you specify Granularity and don't specify any metrics, all metrics are enabled.
*Allowed Values*:
+  GroupMinSize
+  GroupMaxSize
+  GroupDesiredCapacity
+  GroupInServiceInstances
+  GroupPendingInstances
+  GroupStandbyInstances
+  GroupTerminatingInstances
+  GroupTotalInstances

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-metrics
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.AutoScaling.AutoScalingGroup.MetricsCollection
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html)

