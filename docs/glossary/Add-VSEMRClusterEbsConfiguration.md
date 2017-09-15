---
layout: glossary
title: Add-VSEMRClusterEbsConfiguration
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSEMRClusterEbsConfiguration

## SYNOPSIS
Adds an AWS::EMR::Cluster.EbsConfiguration resource property to the template

## SYNTAX

```
Add-VSEMRClusterEbsConfiguration [[-EbsBlockDeviceConfigs] <Object>] [[-EbsOptimized] <Boolean>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.EbsConfiguration resource property to the template

## PARAMETERS

### -EbsBlockDeviceConfigs
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfigs    
DuplicatesAllowed: False    
ItemType: EbsBlockDeviceConfig    
Required: False    
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
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsoptimized    
PrimitiveType: Boolean    
Required: False    
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### VaporShell.Resource.EMR.Cluster.EbsConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html)

