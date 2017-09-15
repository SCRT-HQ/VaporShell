---
layout: glossary
title: Add-VSKinesisFirehoseDeliveryStreamProcessingConfiguration
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSKinesisFirehoseDeliveryStreamProcessingConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration resource property to the template

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamProcessingConfiguration [-Enabled] <Boolean> [-Processors] <Object>
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration resource property to the template

## PARAMETERS

### -Enabled
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-enabled    
PrimitiveType: Boolean    
Required: True    
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Processors
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-processors    
DuplicatesAllowed: False    
ItemType: Processor    
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

### VaporShell.Resource.KinesisFirehose.DeliveryStream.ProcessingConfiguration

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html)

