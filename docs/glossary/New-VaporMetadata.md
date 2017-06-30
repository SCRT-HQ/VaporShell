---
layout: glossary
title: New-VaporMetadata
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# New-VaporMetadata

## SYNOPSIS
Adds a Metadata object to the template

## SYNTAX

```
New-VaporMetadata [-LogicalId] <String> [-Metadata] <Object>
```

## DESCRIPTION
You can use the optional Metadata section to include arbitrary JSON or YAML objects that provide details about the template.

** Important **
    During a stack update, you cannot update the Metadata section by itself.
You can update it only when you include changes that add, modify, or delete resources.

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

### -Metadata
Key/Value pair.

You can use any of these 3 types for this parameter; "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Metadata.Data"

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

### Vaporshell.Metadata

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html)

