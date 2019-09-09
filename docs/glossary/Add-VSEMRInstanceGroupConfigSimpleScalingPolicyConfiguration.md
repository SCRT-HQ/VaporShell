# Add-VSEMRInstanceGroupConfigSimpleScalingPolicyConfiguration

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.SimpleScalingPolicyConfiguration resource property to the template.
SimpleScalingPolicyConfiguration is a subproperty of the ScalingAction property type.
SimpleScalingPolicyConfiguration determines how an automatic scaling action adds or removes instances, the cooldown period, and the number of EC2 instances that are added each time the CloudWatch metric alarm condition is satisfied.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigSimpleScalingPolicyConfiguration [[-AdjustmentType] <Object>] [[-CoolDown] <Int32>]
 [-ScalingAdjustment] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.SimpleScalingPolicyConfiguration resource property to the template.
SimpleScalingPolicyConfiguration is a subproperty of the ScalingAction property type.
SimpleScalingPolicyConfiguration determines how an automatic scaling action adds or removes instances, the cooldown period, and the number of EC2 instances that are added each time the CloudWatch metric alarm condition is satisfied.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AdjustmentType
The way in which EC2 instances are added if ScalingAdjustment is a positive number or terminated if ScalingAdjustment is a negative number each time the scaling activity is triggered.
CHANGE_IN_CAPACITY is the default.
CHANGE_IN_CAPACITY indicates that the EC2 instance count increments or decrements by ScalingAdjustment, which should be expressed as an integer.
PERCENT_CHANGE_IN_CAPACITY indicates the instance count increments or decrements by the percentage specified by ScalingAdjustment, which should be expressed as an integer.
For example, 20 indicates an increase in 20% increments of cluster capacity.
EXACT_CAPACITY indicates the scaling activity results in an instance group with the number of EC2 instances specified by ScalingAdjustment, which should be expressed as a positive integer.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration-adjustmenttype
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

### -CoolDown
The amount of time, in seconds, after a scaling activity completes before any further trigger-related scaling activities can start.
The default value is 0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration-cooldown
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScalingAdjustment
The amount by which to scale in or scale out, based on the specified AdjustmentType.
A positive value adds to the instance group's EC2 instance count while a negative number removes instances.
If AdjustmentType is set to EXACT_CAPACITY, the number should only be a positive integer.
If AdjustmentType is set to PERCENT_CHANGE_IN_CAPACITY, the value should express the percentage as an integer.
For example, -20 indicates a decrease in 20% increments of cluster capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html#cfn-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration-scalingadjustment
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceGroupConfig.SimpleScalingPolicyConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-simplescalingpolicyconfiguration.html)

