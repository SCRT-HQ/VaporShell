# Add-VSAlexaASKSkillOverrides

## SYNOPSIS
Adds an Alexa::ASK::Skill.Overrides resource property to the template.
The Overrides property type provides overrides to the skill package to apply when creating or updating the skill.
Values provided here do not modify the contents of the original skill package.
Currently, only overriding values inside of the skill manifest component of the package is supported.

## SYNTAX

```
Add-VSAlexaASKSkillOverrides [[-Manifest] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an Alexa::ASK::Skill.Overrides resource property to the template.
The Overrides property type provides overrides to the skill package to apply when creating or updating the skill.
Values provided here do not modify the contents of the original skill package.
Currently, only overriding values inside of the skill manifest component of the package is supported.

Overrides is a property of the Alexa::ASK::Skill SkillPackage property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Manifest
Overrides to apply to the skill manifest inside of the skill package.
The skill manifest contains metadata about the skill.
For more information, see Skill Manifest Schemas: https://developer.amazon.com/docs/smapi/skill-manifest.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html#cfn-ask-skill-overrides-manifest
PrimitiveType: Json
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Alexa.ASK.Skill.Overrides
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html)

