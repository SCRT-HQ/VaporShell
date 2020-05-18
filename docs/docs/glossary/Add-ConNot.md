# Add-ConNot

## SYNOPSIS
Adds the condition function "Fn::Not" to a resource property

## SYNTAX

```
Add-ConNot [-Condition] <Object> [<CommonParameters>]
```

## DESCRIPTION
Returns true for a condition that evaluates to false or returns false for a condition that evaluates to true.
Fn::Not acts as a NOT operator.

## EXAMPLES

### EXAMPLE 1
```
Add-ConNot -Condition (Add-ConEquals -FirstValue (Add-FnRef -Ref "EnvironmentType") -SecondValue "prod")
```

When the template is exported, this will convert to: {"Fn::Equals":\["sg-mysggroup",{"Ref":"ASecurityGroup"}\]}

## PARAMETERS

### -Condition
A condition such as Fn::Equals that evaluates to true or false.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Condition.Not
## NOTES
You can use the following functions in this condition statement:
    Fn::FindInMap
    Ref
    Other condition functions

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-not](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-conditions.html#intrinsic-function-reference-conditions-not)

