# Add-VSEMRClusterAutoScalingPolicy

## SYNOPSIS
Adds an AWS::EMR::Cluster.AutoScalingPolicy resource property to the template.
AutoScalingPolicy is a subproperty of InstanceGroupConfig.
AutoScalingPolicy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html in the *Amazon EMR Management Guide*.

## SYNTAX

```
Add-VSEMRClusterAutoScalingPolicy [-Constraints] <Object> [-Rules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.AutoScalingPolicy resource property to the template.
AutoScalingPolicy is a subproperty of InstanceGroupConfig.
AutoScalingPolicy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html in the *Amazon EMR Management Guide*.

## PARAMETERS

### -Constraints
The upper and lower EC2 instance limits for an automatic scaling policy.
Automatic scaling activity will not cause an instance group to grow above or below these limits.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html#cfn-elasticmapreduce-cluster-autoscalingpolicy-constraints
Type: ScalingConstraints
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

### -Rules
The scale-in and scale-out rules that comprise the automatic scaling policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html#cfn-elasticmapreduce-cluster-autoscalingpolicy-rules
DuplicatesAllowed: False
ItemType: ScalingRule
Type: List
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

### Vaporshell.Resource.EMR.Cluster.AutoScalingPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html)

