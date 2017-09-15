---
layout: glossary
title: Import-Vaporshell
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Import-Vaporshell

## SYNOPSIS
Allows you to import an existing CloudFormation template as a starting point.

## SYNTAX

### Path (Default)
```
Import-Vaporshell [-Path] <String>
```

### TemplateBody
```
Import-Vaporshell [-TemplateBody] <String>
```

### RawUrl
```
Import-Vaporshell [-RawUrl] <String>
```

## DESCRIPTION
Allows you to import an existing CloudFormation template as a starting point.

## PARAMETERS

### -Path
The path to the existing template.

```yaml
Type: String
Parameter Sets: Path
Aliases: FullName

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateBody
{{Fill TemplateBody Description}}

```yaml
Type: String
Parameter Sets: TemplateBody
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -RawUrl
{{Fill RawUrl Description}}

```yaml
Type: String
Parameter Sets: RawUrl
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Template

## NOTES

## RELATED LINKS

