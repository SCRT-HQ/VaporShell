---
layout: pagenodesc
title: Add-VSEMRInstanceGroupConfigEbsBlockDeviceConfig
category: glossary
---

# Add-VSEMRInstanceGroupConfigEbsBlockDeviceConfig

## SYNOPSIS
Adds an AWS::EMR::InstanceGroupConfig.EbsBlockDeviceConfig resource property to the template

## SYNTAX

```
Add-VSEMRInstanceGroupConfigEbsBlockDeviceConfig [-VolumeSpecification] <Object>
 [[-VolumesPerInstance] <Int32>]
```

## DESCRIPTION
Adds an AWS::EMR::InstanceGroupConfig.EbsBlockDeviceConfig resource property to the template

## PARAMETERS

### -VolumeSpecification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification
Required: True
Type: VolumeSpecification
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

### -VolumesPerInstance
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumesperinstance
PrimitiveType: Integer
Required: False
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.InstanceGroupConfig.EbsBlockDeviceConfig

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html)

