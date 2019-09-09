# Add-VSEMRInstanceGroupConfigScalingTrigger

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.ScalingTrigger resource property to the template.
ScalingTrigger is a subproperty of the ScalingRule property type.
ScalingTrigger determines the conditions that trigger an automatic scaling activity.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigScalingTrigger [-CloudWatchAlarmDefinition] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.ScalingTrigger resource property to the template.
ScalingTrigger is a subproperty of the ScalingRule property type.
ScalingTrigger determines the conditions that trigger an automatic scaling activity.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CloudWatchAlarmDefinition
The definition of a CloudWatch metric alarm.
When the defined alarm conditions are met along with other trigger parameters, scaling activity begins.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html#cfn-elasticmapreduce-instancegroupconfig-scalingtrigger-cloudwatchalarmdefinition
Type: CloudWatchAlarmDefinition
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceGroupConfig.ScalingTrigger
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingtrigger.html)

