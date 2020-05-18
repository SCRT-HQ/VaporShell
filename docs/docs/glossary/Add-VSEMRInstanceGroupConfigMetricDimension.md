# Add-VSEMRInstanceGroupConfigMetricDimension

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.MetricDimension resource property to the template.
MetricDimension is a subproperty of the CloudWatchAlarmDefinition property type.
MetricDimension specifies a CloudWatch dimension, which is specified with a Key Value pair.
The key is known as a Name in CloudWatch.
By default, Amazon EMR uses one dimension whose Key is JobFlowID and Value is a variable representing the cluster ID, which is ${emr.clusterId}.
This enables the automatic scaling rule for EMR to bootstrap when the cluster ID becomes available during cluster creation.

## SYNTAX

```
Add-VSEMRInstanceGroupConfigMetricDimension [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.MetricDimension resource property to the template.
MetricDimension is a subproperty of the CloudWatchAlarmDefinition property type.
MetricDimension specifies a CloudWatch dimension, which is specified with a Key Value pair.
The key is known as a Name in CloudWatch.
By default, Amazon EMR uses one dimension whose Key is JobFlowID and Value is a variable representing the cluster ID, which is ${emr.clusterId}.
This enables the automatic scaling rule for EMR to bootstrap when the cluster ID becomes available during cluster creation.

## PARAMETERS

### -Key
The dimension name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html#cfn-elasticmapreduce-instancegroupconfig-metricdimension-key
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

### -Value
The dimension value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html#cfn-elasticmapreduce-instancegroupconfig-metricdimension-value
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

### Vaporshell.Resource.EMR.InstanceGroupConfig.MetricDimension
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html)

