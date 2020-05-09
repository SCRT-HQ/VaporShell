# Add-VSEMRClusterScalingTrigger

## SYNOPSIS
Adds an AWS::EMR::Cluster.ScalingTrigger resource property to the template.
ScalingTrigger is a subproperty of the ScalingRule property type.
ScalingTrigger determines the conditions that trigger an automatic scaling activity.

## SYNTAX

```
Add-VSEMRClusterScalingTrigger [-CloudWatchAlarmDefinition] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.ScalingTrigger resource property to the template.
ScalingTrigger is a subproperty of the ScalingRule property type.
ScalingTrigger determines the conditions that trigger an automatic scaling activity.

## PARAMETERS

### -CloudWatchAlarmDefinition
The definition of a CloudWatch metric alarm.
When the defined alarm conditions are met along with other trigger parameters, scaling activity begins.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html#cfn-elasticmapreduce-cluster-scalingtrigger-cloudwatchalarmdefinition
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

### Vaporshell.Resource.EMR.Cluster.ScalingTrigger
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingtrigger.html)

