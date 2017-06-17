---
layout: pagenodesc
title: Add-VSEMRClusterAutoScalingPolicy
category: glossary
---

# Add-VSEMRClusterAutoScalingPolicy

## SYNOPSIS
Adds an AWS::EMR::Cluster.AutoScalingPolicy resource property to the template

## SYNTAX

```
Add-VSEMRClusterAutoScalingPolicy [-Constraints] <Object> [-Rules] <Object>
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.AutoScalingPolicy resource property to the template

## PARAMETERS

### -Constraints
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html#cfn-elasticmapreduce-cluster-autoscalingpolicy-constraints
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html#cfn-elasticmapreduce-cluster-autoscalingpolicy-rules
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

### Vaporshell.Resource.EMR.Cluster.AutoScalingPolicy

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-autoscalingpolicy.html)

