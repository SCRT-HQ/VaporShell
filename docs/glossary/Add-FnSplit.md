---
layout: glossary
title: Add-FnSplit
categories: glossary
---

# Add-FnSplit

## SYNOPSIS
Adds the intrinsic function "Fn::Split" to a resource property

## SYNTAX

```
Add-FnSplit [-Delimiter] <String> [-SourceString] <Object>
```

## DESCRIPTION
To split a string into a list of string values so that you can select an element from the resulting string list, use the Fn::Split intrinsic function.
Specify the location of splits with a delimiter, such as , (a comma).
After you split a string, use the Fn::Select function to pick a specific element.

For example, if a comma-delimited string of subnet IDs is imported to your stack template, you can split the string at each comma.
From the list of subnet IDs, use the Fn::Select intrinsic function to specify a subnet ID for a resource.

## PARAMETERS

### -Delimiter
A string value that determines where the source string is divided.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceString
The string value that you want to split.
This can be a string or object from an Add-Fn* function output

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

### Vaporshell.Function.Split

## NOTES
For the Fn::Split delimiter, you cannot use any functions.
You must specify a string value.

For the Fn::Split list of values (SourceString), you can use the following functions:
    Fn::Base64
    Fn::FindInMap
    Fn::GetAtt
    Fn::GetAZs
    Fn::If
    Fn::Join
    Fn::Select
    Ref

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-split.html)

