---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html
schema: 2.0.0
---

# Add-FnImportValue

## SYNOPSIS
Adds the intrinsic function "Fn::ImportValue" to a resource property

## SYNTAX

```
Add-FnImportValue [-ValueToImport] <Object>
```

## DESCRIPTION
The intrinsic function Fn::ImportValue returns the value of an output exported by another stack.
You typically use this function to create cross-stack references.

Note:
    The following restrictions apply to cross-stack references:
        * For each AWS account, Export names must be unique within a region.
        * You can't create cross-stack references across regions.
You can use the intrinsic function Fn::ImportValue to import only values that have been exported within the same region.
        * For outputs, the value of the Name property of an Export can't use Ref or GetAtt functions that depend on a resource.
        * Similarly, the ImportValue function can't include Ref or GetAtt functions that depend on a resource.
        * You can't delete a stack if another stack references one of its outputs.
        * You can't modify or remove an output value that is referenced by another stack.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
Add-FnImportValue -ValueToImport (Add-FnSub -String "`${NetworkStackNameParameter}-SubnetID")
```

When the template is exported, this will convert to: {"Fn::ImportValue":{"Fn::Sub":"${NetworkStackNameParameter}-SubnetID"}}

## PARAMETERS

### -ValueToImport
The stack output value that you want to import.

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

## INPUTS

## OUTPUTS

### Vaporshell.Function.ImportValue

## NOTES
You can use the following functions in the Fn::ImportValue function.
The value of these functions can't depend on a resource.
    Fn::Base64
    Fn::FindInMap
    Fn::If
    Fn::Join
    Fn::Select
    Fn::Split
    Fn::Sub
    Ref

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)

