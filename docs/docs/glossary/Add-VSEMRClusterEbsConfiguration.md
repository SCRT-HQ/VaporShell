# Add-VSEMRClusterEbsConfiguration

## SYNOPSIS
Adds an AWS::EMR::Cluster.EbsConfiguration resource property to the template.
EbsConfiguration is a subproperty of InstanceFleetConfig or InstanceGroupConfig.
EbsConfiguration determines the EBS volumes to attach to EMR cluster instances.

## SYNTAX

```
Add-VSEMRClusterEbsConfiguration [[-EbsBlockDeviceConfigs] <Object>] [[-EbsOptimized] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.EbsConfiguration resource property to the template.
EbsConfiguration is a subproperty of InstanceFleetConfig or InstanceGroupConfig.
EbsConfiguration determines the EBS volumes to attach to EMR cluster instances.

## PARAMETERS

### -EbsBlockDeviceConfigs
An array of Amazon EBS volume specifications attached to a cluster instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html#cfn-elasticmapreduce-cluster-ebsconfiguration-ebsblockdeviceconfigs
DuplicatesAllowed: False
ItemType: EbsBlockDeviceConfig
Type: List
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

### -EbsOptimized
Indicates whether an Amazon EBS volume is EBS-optimized.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html#cfn-elasticmapreduce-cluster-ebsconfiguration-ebsoptimized
PrimitiveType: Boolean
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

### Vaporshell.Resource.EMR.Cluster.EbsConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsconfiguration.html)

