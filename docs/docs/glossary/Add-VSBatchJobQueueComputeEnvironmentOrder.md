# Add-VSBatchJobQueueComputeEnvironmentOrder

## SYNOPSIS
Adds an AWS::Batch::JobQueue.ComputeEnvironmentOrder resource property to the template.
The order in which compute environments are tried for job placement within a queue.
Compute environments are tried in ascending order.
For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.

## SYNTAX

```
Add-VSBatchJobQueueComputeEnvironmentOrder [-ComputeEnvironment] <Object> [-Order] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Batch::JobQueue.ComputeEnvironmentOrder resource property to the template.
The order in which compute environments are tried for job placement within a queue.
Compute environments are tried in ascending order.
For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.

## PARAMETERS

### -ComputeEnvironment
The Amazon Resource Name ARN of the compute environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html#cfn-batch-jobqueue-computeenvironmentorder-computeenvironment
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

### -Order
The order of the compute environment.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html#cfn-batch-jobqueue-computeenvironmentorder-order
PrimitiveType: Integer
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

### Vaporshell.Resource.Batch.JobQueue.ComputeEnvironmentOrder
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html)

