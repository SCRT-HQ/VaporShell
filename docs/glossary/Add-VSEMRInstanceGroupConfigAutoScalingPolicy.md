---
layout: glossary
title: Add-VSEMRInstanceGroupConfigAutoScalingPolicy
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSEMRInstanceGroupConfigAutoScalingPolicy

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template

## SYNTAX

```
Add-VSEMRInstanceGroupConfigAutoScalingPolicy [-Constraints] <Object> [-Rules] <Object>
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.AutoScalingPolicy resource property to the template

## PARAMETERS

### -Constraints
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-constraints    
Required: True    
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html#cfn-elasticmapreduce-instancegroupconfig-autoscalingpolicy-rules    
DuplicatesAllowed: False    
ItemType: ScalingRule    
Required: True    
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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceGroupConfig.AutoScalingPolicy

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-autoscalingpolicy.html)

