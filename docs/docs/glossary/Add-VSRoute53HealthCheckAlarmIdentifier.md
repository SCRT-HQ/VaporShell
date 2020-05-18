# Add-VSRoute53HealthCheckAlarmIdentifier

## SYNOPSIS
Adds an AWS::Route53::HealthCheck.AlarmIdentifier resource property to the template.
A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether the specified health check is healthy.

## SYNTAX

```
Add-VSRoute53HealthCheckAlarmIdentifier [-Name] <Object> [-Region] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::HealthCheck.AlarmIdentifier resource property to the template.
A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether the specified health check is healthy.

## PARAMETERS

### -Name
The name of the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.
Route 53 supports CloudWatch alarms with the following features:
+ Standard-resolution metrics.
High-resolution metrics aren't supported.
For more information, see High-Resolution Metrics: https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/publishingMetrics.html#high-resolution-metrics in the *Amazon CloudWatch User Guide*.
+ Statistics: Average, Minimum, Maximum, Sum, and SampleCount.
Extended statistics aren't supported.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-name
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

### -Region
For the CloudWatch alarm that you want Route 53 health checkers to use to determine whether this health check is healthy, the region that the alarm was created in.
For the current list of CloudWatch regions, see Amazon CloudWatch: https://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region in the *AWS Service Endpoints* chapter of the *Amazon Web Services General Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-region
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

### Vaporshell.Resource.Route53.HealthCheck.AlarmIdentifier
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html)

