---
layout: glossary
title: Add-ConOr
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-ConOr

## SYNOPSIS
Adds the condition function "Fn::Or" to a resource property

## SYNTAX

```
Add-ConOr [-Conditions] <Object[]>
```

## DESCRIPTION
Returns true if any one of the specified conditions evaluate to true, or returns false if all of the conditions evaluates to false.
Fn::Or acts as an OR operator.
The minimum number of conditions that you can include is 2, and the maximum is 10.

## PARAMETERS

### -Conditions
{{Fill Conditions Description}}

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### VaporShell.Condition.Or

## NOTES
You can use the following functions in this condition statement:
    Fn::FindInMap
    Ref
    Other condition functions

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or)

