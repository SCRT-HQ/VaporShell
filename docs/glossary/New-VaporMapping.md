# New-VaporMapping

## SYNOPSIS
Adds a Mapping object to the template

## SYNTAX

```
New-VaporMapping [-LogicalId] <String> [-Map] <Object> [<CommonParameters>]
```

## DESCRIPTION
The optional Mappings section matches a key to a corresponding set of named values.
For example, if you want to set values based on a region, you can create a mapping that uses the region name as a key and contains the values you want to specify for each specific region.
You use the Fn::FindInMap intrinsic function to retrieve values in a map.

You cannot include parameters, pseudo parameters, or intrinsic functions in the Mappings section.

## EXAMPLES

### EXAMPLE 1
```
$template = Initialize-Vaporshell -Description "Testing Mapping addition"
$template.AddMapping((
    New-VaporMapping -LogicalId "RegionMap" -Map ([PSCustomObject][Ordered]@{
        "us-east-1" = [PSCustomObject][Ordered]@{
            "32" = "ami-6411e20d"
            "64" = "ami-7a11e213"
        }
        "us-west-1" = [PSCustomObject][Ordered]@{
            "32" = "ami-c9c7978c"
            "64" = "ami-cfc7978a"
        }
        "eu-west-1" = [PSCustomObject][Ordered]@{
            "32" = "ami-37c2f643"
            "64" = "ami-31c2f645"
        }
        "ap-southeast-1" = [PSCustomObject][Ordered]@{
            "32" = "ami-66f28c34"
            "64" = "ami-60f28c32"
        }
        "ap-northeast-1" = [PSCustomObject][Ordered]@{
            "32" = "ami-9c03a89d"
            "64" = "ami-a003a8a1"
        }
    })
))
```

When the template is exported, this will convert to: 
    {
        "AWSTemplateFormatVersion":  "2010-09-09",
        "Description":  "Testing Mapping addition",
        "Mappings":  {
            "RegionMap":  {
                "us-east-1":  {
                    "32":  "ami-6411e20d",
                    "64":  "ami-7a11e213"
                },
                "us-west-1":  {
                    "32":  "ami-c9c7978c",
                    "64":  "ami-cfc7978a"
                },
                "eu-west-1":  {
                    "32":  "ami-37c2f643",
                    "64":  "ami-31c2f645"
                },
                "ap-southeast-1":  {
                    "32":  "ami-66f28c34",
                    "64":  "ami-60f28c32"
                },
                "ap-northeast-1":  {
                    "32":  "ami-9c03a89d",
                    "64":  "ami-a003a8a1"
                }
            }
        }
    }

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

### -Map
A 2 level collection of key/value pairs.
If you would like your collection to remain ordered the same as called, use an ordered PSCustomObject, otherwise a hashtable is fine.

You can use any of these 3 types for this parameter; "System.Collections.Hashtable","System.Management.Automation.PSCustomObject","Vaporshell.Mapping.Map"

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Mapping
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html)

