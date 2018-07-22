---
layout: glossary
title: Add-ConAnd
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-ConAnd

## SYNOPSIS
Adds the condition function "Fn::And" to a resource property

## SYNTAX

```
Add-ConAnd [-Conditions] <Object[]> [<CommonParameters>]
```

## DESCRIPTION
Returns true if all the specified conditions evaluate to true, or returns false if any one of the conditions evaluates to false.
Fn::And acts as an AND operator.
The minimum number of conditions that you can include is 2, and the maximum is 10.

## PARAMETERS

### -Conditions
A collection of conditions in object form where each evaluates to true or false.
There must be at least 2 conditions but no more than 10 defined.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Condition.And

## NOTES
You can use the following functions in this condition statement:
    Fn::FindInMap
    Ref
    Other condition functions

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and)

