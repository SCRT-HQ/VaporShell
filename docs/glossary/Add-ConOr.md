---
layout: glossary
title: Add-ConOr
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-ConOr

## SYNOPSIS
Adds the condition function "Fn::Or" to a resource property

## SYNTAX

```
Add-ConOr [-Conditions] <Object[]> [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Condition.Or

## NOTES
You can use the following functions in this condition statement:
    Fn::FindInMap
    Ref
    Other condition functions

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-or)

