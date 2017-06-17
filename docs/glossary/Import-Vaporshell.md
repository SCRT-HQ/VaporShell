---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html
schema: 2.0.0
---

# Import-Vaporshell

## SYNOPSIS
Allows you to import an existing CloudFormation template as a starting point.

## SYNTAX

```
Import-Vaporshell [-Path] <String>
```

## DESCRIPTION
Allows you to import an existing CloudFormation template as a starting point.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
$Template = Import-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json"
```

## PARAMETERS

### -Path
The path to the existing template.

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

## INPUTS

## OUTPUTS

### Vaporshell.Template

## NOTES

## RELATED LINKS

