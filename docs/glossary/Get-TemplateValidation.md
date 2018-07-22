---
layout: glossary
title: Get-TemplateValidation
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Get-TemplateValidation

## SYNOPSIS
Confirms if a template is valid, throws an error if not.

## SYNTAX

### Path (Default)
```
Get-TemplateValidation [-Path] <String> [-ProfileName <String>] [<CommonParameters>]
```

### TemplateBody
```
Get-TemplateValidation [-TemplateBody] <String> [-ProfileName <String>] [<CommonParameters>]
```

### TemplateUrl
```
Get-TemplateValidation [-TemplateUrl] <String> [-ProfileName <String>] [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## PARAMETERS

### -TemplateBody
String formatted body in either JSON or YAML.

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

### -Path
The path to a local template file.

```yaml
Type: String
Parameter Sets: Path
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateUrl
Location of file containing the template body.
The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket.

```yaml
Type: String
Parameter Sets: TemplateUrl
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileName
The name of the configuration profile to deploy the stack with.
Defaults to $env:AWS_PROFILE, if set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: $env:AWS_PROFILE
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
