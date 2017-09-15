---
layout: glossary
title: Add-UserData
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Add-UserData

## SYNOPSIS
Adds UserData to a resource on the template.
For single values (i.e.
in AutoScaling Launch Configurations), it adds the single For multiple values, it automatically adds it as {"Fn::Base64": {"Fn::Join": \["",\[VALUES...\] \] } } to reduce the amount of scripting needed.

## SYNTAX

### String (Default)
```
Add-UserData [-String] <Object>
```

### File
```
Add-UserData [-File] <String>
```

## PARAMETERS

### -String
An array of strings and/or Instrinsic Functions.

IMPORTANT: You must specify new lines in Powershell syntax so it identifies it as a new line when converting to JSON via Export-VaporShell.
This will convert \`n \[backtick n\] into \n \[backslash n\] in the resulting JSON template.

```yaml
Type: Object
Parameter Sets: String
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -File
The path of the script file to convert to UserData.
This cannot contain any Intrinsic functions such as Ref in it.
Use the String parameter if you'd like to include functions in the array.

```yaml
Type: String
Parameter Sets: File
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### VaporShell.Resource.UserData

## NOTES

## RELATED LINKS

