# Add-VSKinesisAnalyticsV2ApplicationParallelismConfiguration

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration resource property to the template.
Describes parameters for how a Java-based Amazon Kinesis Data Analytics application executes multiple tasks simultaneously.
For more information about parallelism, see Parallel Execution: https://ci.apache.org/projects/flink/flink-docs-stable/dev/parallel.html in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.6/.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationParallelismConfiguration [-ConfigurationType] <Object>
 [[-ParallelismPerKPU] <Int32>] [[-AutoScalingEnabled] <Boolean>] [[-Parallelism] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration resource property to the template.
Describes parameters for how a Java-based Amazon Kinesis Data Analytics application executes multiple tasks simultaneously.
For more information about parallelism, see Parallel Execution: https://ci.apache.org/projects/flink/flink-docs-stable/dev/parallel.html in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.6/.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ConfigurationType
Describes whether the application uses the default parallelism for the Kinesis Data Analytics service.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-configurationtype
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

### -ParallelismPerKPU
Describes the number of parallel tasks that a Java-based Kinesis Data Analytics application can perform per Kinesis Processing Unit KPU used by the application.
For more information about KPUs, see Amazon Kinesis Data Analytics Pricing: http://aws.amazon.com/kinesis/data-analytics/pricing/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelismperkpu
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoScalingEnabled
Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-autoscalingenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parallelism
Describes the initial number of parallel tasks that a Java-based Kinesis Data Analytics application can perform.
The Kinesis Data Analytics service can increase this number automatically if ParallelismConfiguration:AutoScalingEnabled: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_ParallelismConfiguration.html#kinesisanalytics-Type-ParallelismConfiguration-AutoScalingEnabled.html is set to true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelism
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.Application.ParallelismConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html)

