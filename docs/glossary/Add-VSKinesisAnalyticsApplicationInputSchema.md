---
layout: glossary
title: Add-VSKinesisAnalyticsApplicationInputSchema
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-VSKinesisAnalyticsApplicationInputSchema

## SYNOPSIS
Adds an AWS::KinesisAnalytics::Application.InputSchema resource property to the template

## SYNTAX

```
Add-VSKinesisAnalyticsApplicationInputSchema [[-RecordEncoding] <Object>] [-RecordColumns] <Object>
 [-RecordFormat] <Object> [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalytics.Application.InputSchema

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html)

