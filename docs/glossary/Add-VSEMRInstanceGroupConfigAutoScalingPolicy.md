# Add-VSEMRInstanceGroupConfigAutoScalingPolicy

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template.
AutoScalingPolicy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html in the *Amazon EMR Management Guide*.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigAutoScalingPolicy [-Constraints] <Object> [-Rules] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template.
AutoScalingPolicy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
For more information, see Using Automatic Scaling in Amazon EMR: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html in the *Amazon EMR Management Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Constraints
The upper and lower EC2 instance limits for an automatic scaling policy.
Automatic scaling activity will not cause an instance group to grow above or below these limits.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-constraints
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-rules
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

### Vaporshell.Resource.EMR.InstanceGroupConfig.AutoScalingPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html)

