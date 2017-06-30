---
layout: glossary
title: New-VaporMapping
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-VaporMapping

## SYNOPSIS
Adds a Mapping object to the template

## SYNTAX

```
New-VaporMapping [-LogicalId] <String> [-Map] <Object>
```

## DESCRIPTION
The optional Mappings section matches a key to a corresponding set of named values.
For example, if you want to set values based on a region, you can create a mapping that uses the region name as a key and contains the values you want to specify for each specific region.
You use the Fn::FindInMap intrinsic function to retrieve values in a map.

You cannot include parameters, pseudo parameters, or intrinsic functions in the Mappings section.

## PARAMETERS

### -LogicalId
An identifier for the current condition.
The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.

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

### -Map
A 2 level collection of key/value pairs.
If you would like your collection to remain ordered the same as called, use an ordered PSCustomObject, otherwise a hashtable is fine.

You can use any of these 3 types for this parameter; "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Mapping.Map"

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

### Vaporshell.Mapping

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html)

