# Initialize-Vaporshell

## SYNOPSIS
The starting point for your template buildout.
This should always be the first thing called in your template script.

## SYNTAX

```
Initialize-Vaporshell [[-Description] <String>] [-FormatVersion <String>] [<CommonParameters>]
```

## DESCRIPTION
The starting point for your template buildout.
This should always be the first thing called in your template script.

This creates a PSObject, custom typed as 'Vaporshell.Template'.
It builds out the containers for Metadata, Parameters, Mappings, Conditions, Resources and Outputs.

## EXAMPLES

### EXAMPLE 1
```
$Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
```

## PARAMETERS

### -Description
The template description.
Total byte count for the description has to be greater than 0 but less than 1024.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatVersion
The AWSTemplateFormatVersion section (optional) identifies the capabilities of the template.
The latest template format version is 2010-09-09 and is currently the only valid value.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AWSTemplateFormatVersion

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Template
## NOTES

## RELATED LINKS
