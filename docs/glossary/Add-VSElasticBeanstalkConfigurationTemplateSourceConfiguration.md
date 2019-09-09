# Add-VSElasticBeanstalkConfigurationTemplateSourceConfiguration

## SYNOPSIS
Adds an AWS::ElasticBeanstalk::ConfigurationTemplate.SourceConfiguration resource property to the template.
An AWS Elastic Beanstalk configuration template to base a new one on.
You can use it to define a AWS::ElasticBeanstalk::ConfigurationTemplate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html resource.

## SYNTAX

```
Add-VSElasticBeanstalkConfigurationTemplateSourceConfiguration [-ApplicationName] <Object>
 [-TemplateName] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticBeanstalk::ConfigurationTemplate.SourceConfiguration resource property to the template.
An AWS Elastic Beanstalk configuration template to base a new one on.
You can use it to define a AWS::ElasticBeanstalk::ConfigurationTemplate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ApplicationName
The name of the application associated with the configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-applicationname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TemplateName
The name of the configuration template.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-templatename
PrimitiveType: String
UpdateType: Mutable

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

### Vaporshell.Resource.ElasticBeanstalk.ConfigurationTemplate.SourceConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html)

