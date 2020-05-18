# Add-VSEC2LaunchTemplateElasticGpuSpecification

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.ElasticGpuSpecification resource property to the template.
Specifies a specification for an Elastic GPU for an Amazon EC2 launch template.

## SYNTAX

```
Add-VSEC2LaunchTemplateElasticGpuSpecification [[-Type] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.ElasticGpuSpecification resource property to the template.
Specifies a specification for an Elastic GPU for an Amazon EC2 launch template.

ElasticGpuSpecification is a property of the  Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## PARAMETERS

### -Type
The type of Elastic Graphics accelerator.
For more information about the values to specify for Type, see Elastic Graphics Basics: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html#elastic-graphics-basics, specifically the Elastic Graphics accelerator column, in the *Amazon Elastic Compute Cloud User Guide for Windows Instances*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html#cfn-ec2-launchtemplate-elasticgpuspecification-type
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.LaunchTemplate.ElasticGpuSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html)

