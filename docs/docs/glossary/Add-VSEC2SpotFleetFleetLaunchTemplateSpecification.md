# Add-VSEC2SpotFleetFleetLaunchTemplateSpecification

## SYNOPSIS
Adds an AWS::EC2::SpotFleet.FleetLaunchTemplateSpecification resource property to the template.
Describes the Amazon EC2 launch template and the launch template version that can be used by a Spot Fleet request to configure Amazon EC2 instances.
For information about launch templates, see Launching an instance from a launch template: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html in the *Amazon EC2 User Guide for Linux Instances*.

## SYNTAX

```
Add-VSEC2SpotFleetFleetLaunchTemplateSpecification [[-LaunchTemplateId] <Object>]
 [[-LaunchTemplateName] <Object>] [-Version] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::SpotFleet.FleetLaunchTemplateSpecification resource property to the template.
Describes the Amazon EC2 launch template and the launch template version that can be used by a Spot Fleet request to configure Amazon EC2 instances.
For information about launch templates, see Launching an instance from a launch template: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html in the *Amazon EC2 User Guide for Linux Instances*.

## PARAMETERS

### -LaunchTemplateId
The ID of the launch template.
If you specify the template ID, you can't specify the template name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplateid
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

### -LaunchTemplateName
The name of the launch template.
You must specify either a template name or a template ID.
Minimum length of 3.
Maximum length of 128.
Names must match the following pattern: a-zA-Z0-9.-/_\]+

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplatename
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

### -Version
The version number of the launch template.
You must specify a version number.
AWS CloudFormation does not support specifying $Latest or $Default for the template version number.
Minimum length of 1.
Maximum length of 255.
Versions must fit the following pattern: u0020-uD7FFuE000-uFFFDuD800uDC00-uDBFFuDFFFrnt\]*

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-version
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.SpotFleet.FleetLaunchTemplateSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html)

