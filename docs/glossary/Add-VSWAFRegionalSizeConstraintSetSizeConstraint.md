---
layout: glossary
title: Add-VSWAFRegionalSizeConstraintSetSizeConstraint
categories: glossary
---

# Add-VSWAFRegionalSizeConstraintSetSizeConstraint

## SYNOPSIS
Adds an AWS::WAFRegional::SizeConstraintSet.SizeConstraint resource property to the template

## SYNTAX

```
Add-VSWAFRegionalSizeConstraintSetSizeConstraint [-ComparisonOperator] <Object> [-Size] <Int32>
 [-TextTransformation] <Object> [-FieldToMatch] <Object>
```

## DESCRIPTION
Adds an AWS::WAFRegional::SizeConstraintSet.SizeConstraint resource property to the template

## PARAMETERS

### -ComparisonOperator
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-comparisonoperator    
PrimitiveType: String    
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

### -Size
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-size    
PrimitiveType: Integer    
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TextTransformation
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-texttransformation    
PrimitiveType: String    
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

### -FieldToMatch
Type: FieldToMatch    
Required: True    
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html#cfn-wafregional-sizeconstraintset-sizeconstraint-fieldtomatch    
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Resource.WAFRegional.SizeConstraintSet.SizeConstraint

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sizeconstraintset-sizeconstraint.html)

