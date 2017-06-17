---
layout: glossary
title: Add-VSEC2InstanceEbs
categories: glossary
---

# Add-VSEC2InstanceEbs

## SYNOPSIS
Adds an AWS::EC2::Instance.Ebs resource property to the template

## SYNTAX

```
Add-VSEC2InstanceEbs [[-DeleteOnTermination] <Boolean>] [[-Encrypted] <Boolean>] [[-Iops] <Int32>]
 [[-SnapshotId] <Object>] [[-VolumeSize] <Int32>] [[-VolumeType] <Object>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.Ebs resource property to the template

## PARAMETERS

### -DeleteOnTermination
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-deleteontermination    
PrimitiveType: Boolean    
Required: False    
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Encrypted
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-encrypted    
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

### -Iops
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-iops    
PrimitiveType: Integer    
Required: False    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -SnapshotId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-snapshotid    
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

### -VolumeSize
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumesize    
PrimitiveType: Integer    
Required: False    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeType
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumetype    
PrimitiveType: String    
Required: False    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance.Ebs

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html)

