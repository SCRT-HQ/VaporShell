---
layout: glossary
title: Export-Vaporshell
categories: glossary
---

# Export-Vaporshell

## SYNOPSIS
Exports the template object to JSON file.

## SYNTAX

```
Export-Vaporshell [-VaporshellTemplate] <Object> [-Path] <String> [-Force]
```

## DESCRIPTION
Exports the template object to JSON file.

Requires the Vaporshell input object to be type 'Vaporshell.Template'

## PARAMETERS

### -VaporshellTemplate
The input template object

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Path
Path to save the resulting JSON file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Forces an overwrite if the Path already exists

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

