# Add-VSElasticBeanstalkApplicationApplicationResourceLifecycleConfig

## SYNOPSIS
Adds an AWS::ElasticBeanstalk::Application.ApplicationResourceLifecycleConfig resource property to the template.
The resource lifecycle configuration for an application.
Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings.
The version lifecycle configuration defines lifecycle settings for application versions.

## SYNTAX

```
Add-VSElasticBeanstalkApplicationApplicationResourceLifecycleConfig [[-ServiceRole] <Object>]
 [[-VersionLifecycleConfig] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticBeanstalk::Application.ApplicationResourceLifecycleConfig resource property to the template.
The resource lifecycle configuration for an application.
Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings.
The version lifecycle configuration defines lifecycle settings for application versions.

ApplicationResourceLifecycleConfig is a property of the AWS::ElasticBeanstalk::Application: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ServiceRole
The ARN of an IAM service role that Elastic Beanstalk has permission to assume.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-servicerole
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

### -VersionLifecycleConfig
Defines lifecycle settings for application versions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-versionlifecycleconfig
Type: ApplicationVersionLifecycleConfig
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

### Vaporshell.Resource.ElasticBeanstalk.Application.ApplicationResourceLifecycleConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html)

