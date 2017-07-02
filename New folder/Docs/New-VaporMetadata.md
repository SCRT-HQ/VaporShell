---
external help file: Vaporshell-help.xml
online version: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html
schema: 2.0.0
---

# New-VaporMetadata

## SYNOPSIS
Adds a Metadata object to the template

## SYNTAX

```
New-VaporMetadata [-LogicalId] <String> [-Metadata] <Object>
```

## DESCRIPTION
You can use the optional Metadata section to include arbitrary JSON or YAML objects that provide details about the template.

    ** Important **
        During a stack update, you cannot update the Metadata section by itself.
    You can update it only when you include changes that add, modify, or delete resources.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```powershell
$template = Initialize-Vaporshell -Description "Testing Metadata addition"

$template.AddMetadata(
    (New-VaporMetadata -LogicalId "Instances" -Metadata [PSCustomObject]@{"Description" = "Information about the instances"}),
    (New-VaporMetadata -LogicalId "Databases" -Metadata [PSCustomObject]@{"Description" = "Information about the databases"})
)
```

**When the template is exported, this will convert to:**
```json
{
    "AWSTemplateFormatVersion":  "2010-09-09",
    "Description":  "Testing Metadata addition",
    "Metadata":  {
        "Instances":  {
            "Description":  "Information about the instances"
        },
        "Databases":  {
            "Description":  "Information about the databases"
        }
    }
}
```

## PARAMETERS

### -LogicalId
An identifier for the current condition.
The logical ID must be alphanumeric (a-z, A-Z, 0-9) and unique within the template.

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

### -Metadata
Key/Value pair.

You can use any of these 3 types for this parameter:
* "System.Collections.Hashtable"
* "System.Management.Automation.PSCustomObject"
* "Vaporshell.Metadata.Data"

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

### Vaporshell.Metadata

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html)

