# Add-VSEC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.LaunchTemplateElasticInferenceAccelerator resource property to the template.
Specifies an elastic inference accelerator.

## SYNTAX

```
Add-VSEC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator [[-Type] <Object>] [[-Count] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.LaunchTemplateElasticInferenceAccelerator resource property to the template.
Specifies an elastic inference accelerator.

LaunchTemplateElasticInferenceAccelerator is a property of the Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## PARAMETERS

### -Type
The type of elastic inference accelerator.
The possible values are eia1.medium, eia1.large, and eia1.xlarge.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-type
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

### -Count
The number of elastic inference accelerators to attach to the instance.
Default: 1

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-count
PrimitiveType: Integer
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

### Vaporshell.Resource.EC2.LaunchTemplate.LaunchTemplateElasticInferenceAccelerator
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html)

