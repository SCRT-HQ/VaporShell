# Add-VSElasticBeanstalkEnvironmentTier

## SYNOPSIS
Adds an AWS::ElasticBeanstalk::Environment.Tier resource property to the template.
Describes the environment tier for an AWS::ElasticBeanstalk::Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html resource.
For more information, see Environment Tiers: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features-managing-env-tiers.html in the *AWS Elastic Beanstalk Developer Guide*.

## SYNTAX

```
Add-VSElasticBeanstalkEnvironmentTier [[-Name] <Object>] [[-Type] <Object>] [[-Version] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ElasticBeanstalk::Environment.Tier resource property to the template.
Describes the environment tier for an AWS::ElasticBeanstalk::Environment: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html resource.
For more information, see Environment Tiers: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features-managing-env-tiers.html in the *AWS Elastic Beanstalk Developer Guide*.

## PARAMETERS

### -Name
The name of this environment tier.
Valid values:
+ For *Web server tier* - WebServer
+ For *Worker tier* - Worker

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-name
PrimitiveType: String
UpdateType: Immutable

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

### -Type
The type of this environment tier.
Valid values:
+ For *Web server tier* - Standard
+ For *Worker tier* - SQS/HTTP

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-type
PrimitiveType: String
UpdateType: Immutable

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
The version of this environment tier.
When you don't set a value to it, Elastic Beanstalk uses the latest compatible worker tier version.
This member is deprecated.
Any specific version that you set may become out of date.
We recommend leaving it unspecified.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-version
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ElasticBeanstalk.Environment.Tier
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html)

