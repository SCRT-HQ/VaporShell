---
layout: glossary
title: Export-VaporShell
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---

# Export-VaporShell

## SYNOPSIS
Exports the template object to JSON file.

## SYNTAX

```
Export-VaporShell [-VaporShellTemplate] <Object> [[-As] <String>] [[-Path] <String>] [-ValidateTemplate]
 [-Force]
```

## DESCRIPTION
Exports the template object to JSON file.

Requires the VaporShell input object to be type 'VaporShell.Template'

## PARAMETERS

### -VaporShellTemplate
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

### -As
Specify JSON or YAML for your preferred output.
Defaults to JSON.

**Important**: In order to use YAML, you must have cfn-flip installed: https://github.com/awslabs/aws-cfn-template-flip

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: JSON
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Path to save the resulting JSON file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidateTemplate
Validates the template using the AWS .NET SDK

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

