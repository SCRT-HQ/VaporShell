# Add-VSEventsRuleBatchParameters

## SYNOPSIS
Adds an AWS::Events::Rule.BatchParameters resource property to the template.
The custom parameters to be used when the target is an AWS Batch job.

## SYNTAX

```
Add-VSEventsRuleBatchParameters [[-ArrayProperties] <Object>] [-JobDefinition] <Object> [-JobName] <Object>
 [[-RetryStrategy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.BatchParameters resource property to the template.
The custom parameters to be used when the target is an AWS Batch job.

## PARAMETERS

### -ArrayProperties
The array properties for the submitted job, such as the size of the array.
The array size can be between 2 and 10,000.
If you specify array properties for a job, it becomes an array job.
This parameter is used only if the target is an AWS Batch job.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-arrayproperties
Type: BatchArrayProperties
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

### -JobDefinition
The ARN or name of the job definition to use if the event target is an AWS Batch job.
This job definition must already exist.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-jobdefinition
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

### -JobName
The name to use for this execution of the job, if the target is an AWS Batch job.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-jobname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RetryStrategy
The retry strategy to use for failed jobs, if the target is an AWS Batch job.
The retry strategy is the number of times to retry the failed job execution.
Valid values are 1-10.
When you specify a retry strategy here, it overrides the retry strategy defined in the job definition.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html#cfn-events-rule-batchparameters-retrystrategy
Type: BatchRetryStrategy
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

### Vaporshell.Resource.Events.Rule.BatchParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchparameters.html)

