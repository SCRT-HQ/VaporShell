# Import-VSTemplateConfig

## SYNOPSIS
Imports a configuration from either a JSON or PSD1 file at the specified key.

## SYNTAX

```
Import-VSTemplateConfig [-Path] <String> [-Key] <String> [<CommonParameters>]
```

## DESCRIPTION
Imports a configuration from either a JSON or PSD1 file at the specified key.

## EXAMPLES

### EXAMPLE 1
```
Import-VSTemplateConfig -Path .\WebServerConfig.psd1 -Key Prd
```

Imports the "Prd" sub-configuration from the WebServerConfig.psd1 configuration file

## PARAMETERS

### -Path
The path to the configuration file.
This can be relative or absolute

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

### -Key
The key of the sub-configuration to return, i.e.
"Dev".

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
