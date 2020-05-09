# Add-VSEventsRuleBatchRetryStrategy

## SYNOPSIS
Adds an AWS::Events::Rule.BatchRetryStrategy resource property to the template.
The retry strategy to use for failed jobs, if the target is an AWS Batch job.
If you specify a retry strategy here, it overrides the retry strategy defined in the job definition.

## SYNTAX

```
Add-VSEventsRuleBatchRetryStrategy [[-Attempts] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.BatchRetryStrategy resource property to the template.
The retry strategy to use for failed jobs, if the target is an AWS Batch job.
If you specify a retry strategy here, it overrides the retry strategy defined in the job definition.

## PARAMETERS

### -Attempts
The number of times to attempt to retry, if the job fails.
Valid values are 1-10.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchretrystrategy.html#cfn-events-rule-batchretrystrategy-attempts
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Events.Rule.BatchRetryStrategy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchretrystrategy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-batchretrystrategy.html)

