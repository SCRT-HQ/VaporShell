# Add-VSEC2LaunchTemplateMonitoring

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.Monitoring resource property to the template.
Specifies whether detailed monitoring is enabled for an instance.

## SYNTAX

```
Add-VSEC2LaunchTemplateMonitoring [[-Enabled] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.Monitoring resource property to the template.
Specifies whether detailed monitoring is enabled for an instance.

Monitoring is a property of the Amazon EC2 LaunchTemplate LaunchTemplateData: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html property type.

## PARAMETERS

### -Enabled
Specify true to enable detailed monitoring.
Otherwise, basic monitoring is enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html#cfn-ec2-launchtemplate-launchtemplatedata-monitoring-enabled
PrimitiveType: Boolean
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

### Vaporshell.Resource.EC2.LaunchTemplate.Monitoring
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html)

