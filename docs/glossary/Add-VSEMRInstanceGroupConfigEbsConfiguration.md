---
layout: glossary
title: Add-VSEMRInstanceGroupConfigEbsConfiguration
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSEMRInstanceGroupConfigEbsConfiguration

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.EbsConfiguration resource property to the template

## SYNTAX

```
Add-VSEMRInstanceGroupConfigEbsConfiguration [[-EbsBlockDeviceConfigs] <Object>] [[-EbsOptimized] <Boolean>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.EbsConfiguration resource property to the template

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

### Vaporshell.Resource.EMR.InstanceGroupConfig.EbsConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html)
