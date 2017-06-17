---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals
schema: 2.0.0
---

# Add-ConEquals

## SYNOPSIS
Adds the condition function "Fn::Equals" to a resource property

## SYNTAX

```
Add-ConEquals [-FirstValue] <Object> [-SecondValue] <Object>
```

## DESCRIPTION
Compares if two values are equal.
Returns true if the two values are equal or false if they aren't.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Add-ConEquals -FirstValue "sg-mysggroup" -SecondValue (Add-FnRef -Ref "ASecurityGroup")
```

When the template is exported, this will convert to: {"Fn::Equals":\["sg-mysggroup",{"Ref":"ASecurityGroup"}\]}

### -------------------------- EXAMPLE 2 --------------------------
```
Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvironmentType") -SecondValue "prod"
```

When the template is exported, this will convert to: {"Fn::Equals":\[{"Ref":"EnvironmentType"},"prod"\]}

## PARAMETERS

### -FirstValue
A value of any type that you want to compare against the SecondValue

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

### -SecondValue
A value of any type that you want to compare against the FirstValue

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

### Vaporshell.Condition.Equals

## NOTES
You can use the following functions in this condition statement:
    Fn::FindInMap
    Ref
    Other condition functions

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-equals)

