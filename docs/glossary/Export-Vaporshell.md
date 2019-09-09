# Export-Vaporshell

## SYNOPSIS
Exports the template object to JSON file.

## SYNTAX

```
Export-Vaporshell [-VaporshellTemplate] <Object> [[-As] <String>] [[-Path] <String>] [-ValidateTemplate]
 [-Force] [<CommonParameters>]
```

## DESCRIPTION
Exports the template object to JSON file.

Requires the Vaporshell input object to be type 'Vaporshell.Template'

## EXAMPLES

### EXAMPLE 1
```
$Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
```

# Add items to the $Template object here
$Template | Export-Vaporshell -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

### EXAMPLE 2
```
$Template = Initialize-Vaporshell -Description "This is a sample template that builds an S3 bucket"
```

# Add items to the $Template object here
Export-Vaporshell -VaporshellTemplate $Template -Path "C:\CloudFormation\Templates\S3Bucket.json" -Force

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
