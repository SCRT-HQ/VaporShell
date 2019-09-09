# Add-VSBatchJobDefinitionRetryStrategy

## SYNOPSIS
Adds an AWS::Batch::JobDefinition.RetryStrategy resource property to the template.
The retry strategy associated with a job.

## SYNTAX

```
Add-VSBatchJobDefinitionRetryStrategy [[-Attempts] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobDefinition.RetryStrategy resource property to the template.
The retry strategy associated with a job.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Attempts
The number of times to move a job to the RUNNABLE status.
You may specify between 1 and 10 attempts.
If the value of attempts is greater than one, the job is retried on failure the same number of attempts as the value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html#cfn-batch-jobdefinition-retrystrategy-attempts
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Batch.JobDefinition.RetryStrategy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html)

