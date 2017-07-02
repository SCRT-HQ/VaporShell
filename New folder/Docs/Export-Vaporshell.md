---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html
schema: 2.0.0
---

# Export-Vaporshell

## SYNOPSIS
Exports the template object to JSON file.

## SYNTAX

```
Export-Vaporshell [-VaporshellTemplate] <Object> [[-Path] <String>] [-Force]
```

## DESCRIPTION
Exports the template object to JSON file.

Requires the Vaporshell input object to be type 'Vaporshell.Template'

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
$Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
# Add items to the $Template object here
$Template | Export-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force
```

### -------------------------- EXAMPLE 2 --------------------------
```powershell
$Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
# Add items to the $Template object here
Export-Vaporshell -VaporshellTemplate $Template -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force
```

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

Required: False
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

