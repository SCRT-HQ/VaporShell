# Add-VSEMRInstanceGroupConfigScalingRule

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.ScalingRule resource property to the template.
ScalingRule is a subproperty of the AutoScalingPolicy property type.
ScalingRule defines the scale-in or scale-out rules for scaling activity, including the CloudWatch metric alarm that triggers activity, how EC2 instances are added or removed, and the periodicity of adjustments.
The automatic scaling policy for an instance group can comprise one or more automatic scaling rules.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigScalingRule [-Action] <Object> [[-Description] <Object>] [-Name] <Object>
 [-Trigger] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.ScalingRule resource property to the template.
ScalingRule is a subproperty of the AutoScalingPolicy property type.
ScalingRule defines the scale-in or scale-out rules for scaling activity, including the CloudWatch metric alarm that triggers activity, how EC2 instances are added or removed, and the periodicity of adjustments.
The automatic scaling policy for an instance group can comprise one or more automatic scaling rules.

## PARAMETERS

### -Action
The conditions that trigger an automatic scaling activity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-action
Type: ScalingAction
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

### -Description
A friendly, more verbose description of the automatic scaling rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-description
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

### -Name
The name used to identify an automatic scaling rule.
Rule names must be unique within a scaling policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-name
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Trigger
The CloudWatch alarm definition that determines when automatic scaling activity is triggered.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-trigger
Type: ScalingTrigger
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceGroupConfig.ScalingRule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html)

