---
layout: glossary
title: Add-ConIf
categories: glossary
---

# Add-ConIf

## SYNOPSIS
Adds the condition function "Fn::If" to a resource property

## SYNTAX

```
Add-ConIf [-ConditionName] <String> [-ValueIfTrue] <Object> [-ValueIfFalse] <Object>
```

## DESCRIPTION
Returns one value if the specified condition evaluates to true and another value if the specified condition evaluates to false.
Currently, AWS CloudFormation supports the Fn::If intrinsic function in the metadata attribute, update policy attribute, and property values in the Resources section and Outputs sections of a template.
You can use the AWS::NoValue pseudo parameter as a return value to remove the corresponding property.

## PARAMETERS

### -ConditionName
A reference to a condition in the Conditions section.
Use the condition's name to reference it.

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

### -ValueIfTrue
A value to be returned if the specified condition evaluates to true.

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

### -ValueIfFalse
A value to be returned if the specified condition evaluates to false.

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

### Vaporshell.Condition.If

## NOTES
You can use the following functions in the Fn::If condition:
    Fn::Base64
    Fn::FindInMap
    Fn::GetAtt
    Fn::GetAZs
    Fn::If
    Fn::Join
    Fn::Select
    Ref

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-if)

