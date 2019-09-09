# Add-VSEC2LaunchTemplateTagSpecification

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.TagSpecification resource property to the template.
Specifies tags to apply to a resource when the resource is created.

## SYNTAX

```
Add-VSEC2LaunchTemplateTagSpecification [[-ResourceType] <Object>] [[-Tags] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.TagSpecification resource property to the template.
Specifies tags to apply to a resource when the resource is created.

TagSpecification is a property of the Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ResourceType
The type of resource to tag.
Currently, the resource types that support tagging on creation are instance and volume.
To tag a resource after it has been created, see CreateTags: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html#cfn-ec2-launchtemplate-tagspecification-resourcetype
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

### -Tags
The tags to apply to the resource.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html#cfn-ec2-launchtemplate-tagspecification-tags
ItemType: Tag
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.LaunchTemplate.TagSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html)

