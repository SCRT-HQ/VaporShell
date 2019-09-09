# Add-VSKinesisAnalyticsV2ApplicationMonitoringConfiguration

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.MonitoringConfiguration resource property to the template.
Describes configuration parameters for Amazon CloudWatch logging for a Java-based Kinesis Data Analytics application.
For more information about CloudWatch logging, see Monitoring: https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationMonitoringConfiguration [-ConfigurationType] <Object>
 [[-MetricsLevel] <Object>] [[-LogLevel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.MonitoringConfiguration resource property to the template.
Describes configuration parameters for Amazon CloudWatch logging for a Java-based Kinesis Data Analytics application.
For more information about CloudWatch logging, see Monitoring: https://docs.aws.amazon.com/kinesisanalytics/latest/java/monitoring-overview.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ConfigurationType
Describes whether to use the default CloudWatch logging configuration for an application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-configurationtype
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

### -MetricsLevel
Describes the granularity of the CloudWatch Logs for an application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-metricslevel
PrimitiveType: String
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

### -LogLevel
Describes the verbosity of the CloudWatch Logs for an application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-loglevel
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

### Vaporshell.Resource.KinesisAnalyticsV2.Application.MonitoringConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html)

