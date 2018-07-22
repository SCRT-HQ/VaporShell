---
layout: glossary
title: Import-Vaporshell
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Import-Vaporshell

## SYNOPSIS
Allows you to import an existing CloudFormation template as a starting point.

## SYNTAX

### Path (Default)
```
Import-Vaporshell [-Path] <String> [<CommonParameters>]
```

### TemplateBody
```
Import-Vaporshell [-TemplateBody] <String> [<CommonParameters>]
```

### RawUrl
```
Import-Vaporshell [-RawUrl] <String> [<CommonParameters>]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Template

## NOTES

## RELATED LINKS
