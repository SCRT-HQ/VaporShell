---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-and
schema: 2.0.0
---

# Add-ConAnd

## SYNOPSIS
Adds the condition function "Fn::And" to a resource property

## SYNTAX

```
Add-ConAnd [-Conditions] <Object[]>
```

## DESCRIPTION
Returns true if all the specified conditions evaluate to true, or returns false if any one of the conditions evaluates to false.
Fn::And acts as an AND operator.
The minimum number of conditions that you can include is 2, and the maximum is 10.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Add-ConAnd -Conditions (Add-ConEquals -FirstValue "sg-mysggroup" -SecondValue (Add-FnRef -Ref "ASecurityGroup")),(Add-ConEquals -FirstValue "Production" -SecondValue (Add-FnRef -Ref "Environment"))
```

When the template is exported, this will convert to: {"Fn::And":\[{"Fn::Equals":\["sg-mysggroup",{"Ref":"ASecurityGroup"}\]},{"Fn::Equals":\["Production",{"Ref":"Environment"}\]}\]}

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

