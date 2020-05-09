# Add-VSRoute53HostedZoneQueryLoggingConfig

## SYNOPSIS
Adds an AWS::Route53::HostedZone.QueryLoggingConfig resource property to the template.
A complex type that contains information about a configuration for DNS query logging.

## SYNTAX

```
Add-VSRoute53HostedZoneQueryLoggingConfig [-CloudWatchLogsLogGroupArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Route53::HostedZone.QueryLoggingConfig resource property to the template.
A complex type that contains information about a configuration for DNS query logging.

## PARAMETERS

### -CloudWatchLogsLogGroupArn
The Amazon Resource Name ARN of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html#cfn-route53-hostedzone-queryloggingconfig-cloudwatchlogsloggrouparn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Route53.HostedZone.QueryLoggingConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-queryloggingconfig.html)

