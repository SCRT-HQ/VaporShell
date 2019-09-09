# Add-VSEMRInstanceGroupConfigScalingConstraints

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.ScalingConstraints resource property to the template.
ScalingConstraints is a subproperty of the AutoScalingPolicy property type.
ScalingConstraints defines the upper and lower EC2 instance limits for an automatic scaling policy.
Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or shrink below these limits.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigScalingConstraints [-MaxCapacity] <Int32> [-MinCapacity] <Int32>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.ScalingConstraints resource property to the template.
ScalingConstraints is a subproperty of the AutoScalingPolicy property type.
ScalingConstraints defines the upper and lower EC2 instance limits for an automatic scaling policy.
Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or shrink below these limits.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MaxCapacity
The upper boundary of EC2 instances in an instance group beyond which scaling activities are not allowed to grow.
Scale-out activities will not add instances beyond this boundary.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html#cfn-elasticmapreduce-instancegroupconfig-scalingconstraints-maxcapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinCapacity
The lower boundary of EC2 instances in an instance group below which scaling activities are not allowed to shrink.
Scale-in activities will not terminate instances below this boundary.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html#cfn-elasticmapreduce-instancegroupconfig-scalingconstraints-mincapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceGroupConfig.ScalingConstraints
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingconstraints.html)

