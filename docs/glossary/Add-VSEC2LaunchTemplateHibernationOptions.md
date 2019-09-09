# Add-VSEC2LaunchTemplateHibernationOptions

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.HibernationOptions resource property to the template.
Specifies whether your instance is configured for hibernation.
This parameter is valid only if the instance meets the hibernation prerequisites: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites.
Hibernation is currently supported only for Amazon Linux.
For more information, see Hibernate Your Instance: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html in the *Amazon Elastic Compute Cloud User Guide*.

## SYNTAX

```
Add-VSEC2LaunchTemplateHibernationOptions [[-Configured] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.HibernationOptions resource property to the template.
Specifies whether your instance is configured for hibernation.
This parameter is valid only if the instance meets the hibernation prerequisites: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites.
Hibernation is currently supported only for Amazon Linux.
For more information, see Hibernate Your Instance: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html in the *Amazon Elastic Compute Cloud User Guide*.

HibernationOptions is a property of the Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Configured
If you set this parameter to true, the instance is enabled for hibernation.
Default: false

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-hibernationoptions-configured
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.LaunchTemplate.HibernationOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html)

