# Add-VSEMRClusterScalingAction

## SYNOPSIS
Adds an AWS::EMR::Cluster.ScalingAction resource property to the template.
ScalingAction is a subproperty of the ScalingRule property type.
ScalingAction determines the type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.

## SYNTAX

```
Add-VSEMRClusterScalingAction [[-Market] <Object>] [-SimpleScalingPolicyConfiguration] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.ScalingAction resource property to the template.
ScalingAction is a subproperty of the ScalingRule property type.
ScalingAction determines the type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.

## PARAMETERS

### -Market
Not available for instance groups.
Instance groups use the market type specified for the group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html#cfn-elasticmapreduce-cluster-scalingaction-market
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

### -SimpleScalingPolicyConfiguration
The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html#cfn-elasticmapreduce-cluster-scalingaction-simplescalingpolicyconfiguration
Type: SimpleScalingPolicyConfiguration
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

### Vaporshell.Resource.EMR.Cluster.ScalingAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingaction.html)

