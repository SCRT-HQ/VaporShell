# Add-VSElasticBeanstalkApplicationApplicationVersionLifecycleConfig

## SYNOPSIS
Adds an AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig resource property to the template.
The application version lifecycle settings for an application.
Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.

## SYNTAX

```
Add-VSElasticBeanstalkApplicationApplicationVersionLifecycleConfig [[-MaxAgeRule] <Object>]
 [[-MaxCountRule] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig resource property to the template.
The application version lifecycle settings for an application.
Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.

When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment.
The source bundle remains in S3 unless you configure the rule to delete it.

ApplicationVersionLifecycleConfig is a property of the ApplicationResourceLifecycleConfig: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html property type.

## PARAMETERS

### -MaxAgeRule
Specify a max age rule to restrict the length of time that application versions are retained for an application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxagerule
Type: MaxAgeRule
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

### -MaxCountRule
Specify a max count rule to restrict the number of application versions that are retained for an application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxcountrule
Type: MaxCountRule
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

### Vaporshell.Resource.ElasticBeanstalk.Application.ApplicationVersionLifecycleConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html)

