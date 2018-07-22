---
layout: glossary
title: New-VaporMetadata
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# New-VaporMetadata

## SYNOPSIS
Adds a Metadata object to the template

## SYNTAX

```
New-VaporMetadata [-LogicalId] <String> [-Metadata] <Object> [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Metadata

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html)

