# Add-VSElasticBeanstalkConfigurationTemplateConfigurationOptionSetting

## SYNOPSIS
Adds an AWS::ElasticBeanstalk::ConfigurationTemplate.ConfigurationOptionSetting resource property to the template.
The ConfigurationOptionSetting property type specifies an option for an AWS Elastic Beanstalk configuration template.

## SYNTAX

```
Add-VSElasticBeanstalkConfigurationTemplateConfigurationOptionSetting [-Namespace] <Object>
 [-OptionName] <Object> [[-ResourceName] <Object>] [[-Value] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticBeanstalk::ConfigurationTemplate.ConfigurationOptionSetting resource property to the template.
The ConfigurationOptionSetting property type specifies an option for an AWS Elastic Beanstalk configuration template.

The OptionSettings property of the AWS::ElasticBeanstalk::ConfigurationTemplate: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-beanstalk-configurationtemplate.html resource contains a list of ConfigurationOptionSetting property types.

For a list of possible namespaces and option values, see Option Values: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html in the *AWS Elastic Beanstalk Developer Guide*.

## PARAMETERS

### -Namespace
A unique namespace that identifies the option's associated AWS resource.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-namespace
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

### -OptionName
The name of the configuration option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-optionname
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

### -ResourceName
A unique resource name for the option setting.
Use it for a time-based scaling configuration option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-resourcename
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The current value for the configuration option.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-value
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticBeanstalk.ConfigurationTemplate.ConfigurationOptionSetting
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html)

