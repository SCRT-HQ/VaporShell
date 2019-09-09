# Add-VSAutoScalingAutoScalingGroupLaunchTemplateSpecification

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup.LaunchTemplateSpecification resource property to the template.
LaunchTemplateSpecification is a property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html that specifies the launch template to use to launch instances.

## SYNTAX

```
Add-VSAutoScalingAutoScalingGroupLaunchTemplateSpecification [[-LaunchTemplateId] <Object>]
 [[-LaunchTemplateName] <Object>] [-Version] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup.LaunchTemplateSpecification resource property to the template.
LaunchTemplateSpecification is a property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html that specifies the launch template to use to launch instances.

For information about creating a launch template, see Creating a Launch Template for an Auto Scaling Group: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html in the *Amazon EC2 Auto Scaling User Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LaunchTemplateId
The ID of the launch template.
You must specify either a template ID or a template name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-launchtemplateid
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-launchtemplatename
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
The version number.
AWS CloudFormation does not support specifying $Latest, or $Default for the template version number.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-version
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

### Vaporshell.Resource.AutoScaling.AutoScalingGroup.LaunchTemplateSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html)

