# Add-VSKinesisAnalyticsV2ApplicationFlinkApplicationConfiguration

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.FlinkApplicationConfiguration resource property to the template.
Describes configuration parameters for a Java-based Amazon Kinesis Data Analytics application.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationFlinkApplicationConfiguration [[-CheckpointConfiguration] <Object>]
 [[-ParallelismConfiguration] <Object>] [[-MonitoringConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.FlinkApplicationConfiguration resource property to the template.
Describes configuration parameters for a Java-based Amazon Kinesis Data Analytics application.

## PARAMETERS

### -CheckpointConfiguration
Describes an application's checkpointing configuration.
Checkpointing is the process of persisting application state for fault tolerance.
For more information, see  Checkpoints for Fault Tolerance: https://ci.apache.org/projects/flink/flink-docs-release-1.8/concepts/programming-model.html#checkpoints-for-fault-tolerance in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.8/.

Type: CheckpointConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-checkpointconfiguration
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

### -ParallelismConfiguration
Describes parameters for how an application executes multiple tasks simultaneously.

Type: ParallelismConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-parallelismconfiguration
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

### -MonitoringConfiguration
Describes configuration parameters for Amazon CloudWatch logging for an application.

Type: MonitoringConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-monitoringconfiguration
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

### Vaporshell.Resource.KinesisAnalyticsV2.Application.FlinkApplicationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html)

