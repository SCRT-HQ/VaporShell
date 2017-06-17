---
layout: pagenodesc
title: Initialize-Vaporshell
category: glossary
---

# Initialize-Vaporshell

## SYNOPSIS
The starting point for your template buildout.
This should always be the first thing called in your template script.

## SYNTAX

```
Initialize-Vaporshell [[-FormatVersion] <String>] [[-Description] <String>]
```

## DESCRIPTION
The starting point for your template buildout.
This should always be the first thing called in your template script.

This creates a PSObject, custom typed as 'Vaporshell.Template'.
It builds out the containers for Metadata, Parameters, Mappings, Conditions, Resources and Outputs.

## PARAMETERS

### -FormatVersion
The AWSTemplateFormatVersion section (optional) identifies the capabilities of the template.
The latest template format version is 2010-09-09 and is currently the only valid value.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: 2010-09-09
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The template description.
Total byte count for the description has to be greater than 0 but less than 1024.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Template

## NOTES

## RELATED LINKS

