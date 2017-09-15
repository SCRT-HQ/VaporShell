---
layout: glossary
title: Add-VSKinesisAnalyticsApplicationInputSchema
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-VSKinesisAnalyticsApplicationInputSchema

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.InputSchema resource property to the template

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationInputSchema [[-RecordEncoding] <Object>] [-RecordColumns] <Object>
 [-RecordFormat] <Object>
```

## DESCRIPTION
Adds an AWS::KinesisAnalytics::Application.InputSchema resource property to the template

## PARAMETERS

### -RecordEncoding
Required: False    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordencoding    
PrimitiveType: String    
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

### -RecordColumns
Type: List    
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordcolumns    
ItemType: RecordColumn    
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

### -RecordFormat
Type: RecordFormat    
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordformat    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### VaporShell.Resource.KinesisAnalytics.Application.InputSchema

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html)

