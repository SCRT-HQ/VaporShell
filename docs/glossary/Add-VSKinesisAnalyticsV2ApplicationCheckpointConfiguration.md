# Add-VSKinesisAnalyticsV2ApplicationCheckpointConfiguration

## SYNOPSIS
Adds an AWS::KinesisAnalyticsV2::Application.CheckpointConfiguration resource property to the template.
Describes an application's checkpointing configuration.
Checkpointing is the process of persisting application state for fault tolerance.
For more information, see  Checkpoints for Fault Tolerance: https://ci.apache.org/projects/flink/flink-docs-release-1.6/concepts/programming-model.html#checkpoints-for-fault-tolerance in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.6/.

## SYNTAX

```
Add-VSKinesisAnalyticsV2ApplicationCheckpointConfiguration [-ConfigurationType] <Object>
 [[-CheckpointInterval] <Int32>] [[-MinPauseBetweenCheckpoints] <Int32>] [[-CheckpointingEnabled] <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisAnalyticsV2::Application.CheckpointConfiguration resource property to the template.
Describes an application's checkpointing configuration.
Checkpointing is the process of persisting application state for fault tolerance.
For more information, see  Checkpoints for Fault Tolerance: https://ci.apache.org/projects/flink/flink-docs-release-1.6/concepts/programming-model.html#checkpoints-for-fault-tolerance in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.6/.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ConfigurationType
Describes whether the application uses Amazon Kinesis Data Analytics' default checkpointing behavior.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-configurationtype
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

### -CheckpointInterval
Describes the interval in milliseconds between checkpoint operations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-checkpointinterval
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

### -MinPauseBetweenCheckpoints
Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.
If a checkpoint operation takes longer than the CheckpointInterval, the application otherwise performs continual checkpoint operations.
For more information, see  Tuning Checkpointing: https://ci.apache.org/projects/flink/flink-docs-stable/ops/state/large_state_tuning.html#tuning-checkpointing in the Apache Flink Documentation: https://ci.apache.org/projects/flink/flink-docs-release-1.6/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-minpausebetweencheckpoints
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -CheckpointingEnabled
Describes whether checkpointing is enabled for a Java-based Kinesis Data Analytics application.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-checkpointingenabled
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisAnalyticsV2.Application.CheckpointConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html)

