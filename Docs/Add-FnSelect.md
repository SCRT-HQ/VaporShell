---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html
schema: 2.0.0
---

# Add-FnSelect

## SYNOPSIS
Adds the intrinsic function "Fn::Select" to a resource property

## SYNTAX

```
Add-FnSelect [[-Index] <Object>] [-ListOfObjects] <Object>
```

## DESCRIPTION
The intrinsic function Fn::Select returns a single object from a list of objects by index.

You can use Fn::Select to select an object from a CommaDelimitedList parameter.
You might use a CommaDelimitedList parameter to combine the values of related parameters, which reduces the total number of parameters in your template.

    ** Important **
        Fn::Select does not check for null values or if the index is out of bounds of the array.
Both conditions will result in a stack error, so you should be certain that the index you choose is valid, and that the list contains non-null values.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
Add-FnSelect -Index 2 -ListOfObjects (Add-FnSplit -Delimiter "," -SourceString (Add-FnImportValue -ValueToImport "AccountSubnetIds"))
```

**When the template is exported, this will convert to:** 
```json
{"Fn::Select":["2",{"Fn::Split":[",",{"Fn::ImportValue":"AccountSubnetIds"}]}]}
```

## PARAMETERS

### -Index
The index of the object to retrieve.
This must be a value from zero to N-1, where N represents the number of elements in the array.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ListOfObjects
The list of objects to select from.
This list must not be null, nor can it have null entries.

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

### Vaporshell.Function.Select

## NOTES
For the Fn::Select index value, you can use the Ref and Fn::FindInMap functions.

For the Fn::Select list of objects, you can use the following functions:
* Fn::FindInMap
* Fn::GetAtt
* Fn::GetAZs
* Fn::If
* Fn::Split
* Ref

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-select.html)

