# Add-VSAlexaASKSkillSkillPackage

## SYNOPSIS
Adds an Alexa::ASK::Skill.SkillPackage resource property to the template.
The SkillPackage property type contains configuration details for the skill package that contains the components of the Alexa skill.
Skill packages are retrieved from an Amazon S3 bucket and key and used to create and update the skill.
More details about the skill package format are located in the Skill Package API Reference: https://developer.amazon.com/docs/smapi/skill-package-api-reference.html#skill-package-format.

## SYNTAX

```
Add-VSAlexaASKSkillSkillPackage [[-S3BucketRole] <Object>] [[-S3ObjectVersion] <Object>] [-S3Bucket] <Object>
 [-S3Key] <Object> [[-Overrides] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an Alexa::ASK::Skill.SkillPackage resource property to the template.
The SkillPackage property type contains configuration details for the skill package that contains the components of the Alexa skill.
Skill packages are retrieved from an Amazon S3 bucket and key and used to create and update the skill.
More details about the skill package format are located in the Skill Package API Reference: https://developer.amazon.com/docs/smapi/skill-package-api-reference.html#skill-package-format.

SkillPackage is a property of the Alexa::ASK::Skill resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -S3BucketRole
ARN of the role that grants the Alexa service permission to access the bucket and retrieve the skill package.
This role is optional.
If you do not provide it, the bucket must be publicly accessible or configured with a policy that allows this access.
Otherwise, AWS CloudFormation cannot create the skill.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucketrole
PrimitiveType: String
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

### -S3ObjectVersion
If you have S3 versioning enabled, the version ID of the skill package.zip file.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3objectversion
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3Bucket
The name of the Amazon S3 bucket where the .zip file that contains the skill package is stored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3bucket
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -S3Key
The location and name of the skill package .zip file.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-s3key
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Overrides
Overrides to the skill package to apply when creating or updating the skill.
Values provided here do not modify the contents of the original skill package.
Currently, only overriding values inside of the skill manifest component of the package is supported.

Type: Overrides
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html#cfn-ask-skill-skillpackage-overrides
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Alexa.ASK.Skill.SkillPackage
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-skillpackage.html)

