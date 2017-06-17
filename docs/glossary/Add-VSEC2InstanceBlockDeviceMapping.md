---
layout: glossary
title: Add-VSEC2InstanceBlockDeviceMapping
categories: glossary
---

# Add-VSEC2InstanceBlockDeviceMapping

## SYNOPSIS
Adds an AWS::EC2::Instance.BlockDeviceMapping resource property to the template

## SYNTAX

```
Add-VSEC2InstanceBlockDeviceMapping [-DeviceName] <Object> [[-Ebs] <Object>] [[-NoDevice] <Object>]
 [[-VirtualName] <Object>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.BlockDeviceMapping resource property to the template

## PARAMETERS

### -DeviceName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-devicename    
PrimitiveType: String    
Required: True    
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

### -Ebs
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-ebs    
Required: False    
Type: Ebs    
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

### -NoDevice
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-nodevice    
Required: False    
Type: NoDevice    
UpdateType: Mutable

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

### -VirtualName
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-virtualname    
PrimitiveType: String    
Required: False    
UpdateType: Mutable

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

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance.BlockDeviceMapping

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html)

