---
layout: glossary
title: Add-FnJoin
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-FnJoin

## SYNOPSIS
Adds the intrinsic function "Fn::Join" to a resource property

## SYNTAX

```
Add-FnJoin [[-Delimiter] <String>] [-ListOfValues] <Object[]> [<CommonParameters>]
```

## DESCRIPTION
The intrinsic function Fn::Join appends a set of values into a single value, separated by the specified delimiter.
If a delimiter is the empty string, the set of values are concatenated with no delimiter.

## PARAMETERS

### -Delimiter
The value you want to occur between fragments.
The delimiter will occur between fragments only.
It will not terminate the final value.

This is not required.
If you want to join without an added delimiter, simply exclude this parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListOfValues
The list of values you want combined.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Function.Join

## NOTES
For the Fn::Join delimiter, you cannot use any functions.
You must specify a string value.

For the Fn::Join list of values, you can use the following functions:
    Fn::Base64
    Fn::FindInMap
    Fn::GetAtt
    Fn::GetAZs
    Fn::If
    Fn::Join
    Fn::Split
    Fn::Select
    Ref

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-join.html)

