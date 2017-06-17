---
layout: pagenodesc
title: Add-VSEMRClusterInstanceGroupConfig
category: glossary
---

# Add-VSEMRClusterInstanceGroupConfig

## SYNOPSIS
Adds an AWS::EMR::Cluster.InstanceGroupConfig resource property to the template

## SYNTAX

```
Add-VSEMRClusterInstanceGroupConfig [[-AutoScalingPolicy] <Object>] [[-BidPrice] <Object>]
 [[-Configurations] <Object>] [[-EbsConfiguration] <Object>] [-InstanceCount] <Int32> [-InstanceType] <Object>
 [[-Market] <Object>] [[-Name] <Object>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.InstanceGroupConfig resource property to the template

## PARAMETERS

### -AutoScalingPolicy
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-elasticmapreduce-cluster-instancegroupconfig-autoscalingpolicy
Required: False
Type: AutoScalingPolicy
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

### -BidPrice
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-bidprice
PrimitiveType: String
Required: False
UpdateType: Immutable

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

### -Configurations
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-configurations
DuplicatesAllowed: False
ItemType: Configuration
Required: False
Type: List
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EbsConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfigConfigurations-ebsconfiguration
Required: False
Type: EbsConfiguration
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceCount
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-instancecount
PrimitiveType: Integer
Required: True
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-instancetype
PrimitiveType: String
Required: True
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Market
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-market
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html#cfn-emr-cluster-jobflowinstancesconfig-instancegroupconfig-name
PrimitiveType: String
Required: False
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.InstanceGroupConfig

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-instancegroupconfig.html)

