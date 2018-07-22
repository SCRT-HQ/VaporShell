---
layout: glossary
title: Add-VSGlueTableSkewedInfo
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-VSGlueTableSkewedInfo

## SYNOPSIS
Adds an AWS::Glue::Table.SkewedInfo resource property to the template

## SYNTAX

```
Add-VSGlueTableSkewedInfo [[-SkewedColumnNames] <Object>] [[-SkewedColumnValues] <Object>]
 [[-SkewedColumnValueLocationMaps] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Table.SkewedInfo resource property to the template

## PARAMETERS

### -SkewedColumnNames
PrimitiveItemType: String    
Type: List    
Required: False    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnnames    
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

### -SkewedColumnValues
PrimitiveItemType: String    
Type: List    
Required: False    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnvalues    
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

### -SkewedColumnValueLocationMaps
Required: False    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnvaluelocationmaps    
PrimitiveType: Json    
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Glue.Table.SkewedInfo

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html)

