# Add-VSGlueJobExecutionProperty

## SYNOPSIS
Adds an AWS::Glue::Job.ExecutionProperty resource property to the template.
An execution property of a job.

## SYNTAX

```
Add-VSGlueJobExecutionProperty [[-MaxConcurrentRuns] <Double>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Job.ExecutionProperty resource property to the template.
An execution property of a job.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MaxConcurrentRuns
The maximum number of concurrent runs allowed for the job.
The default is 1.
An error is returned when this threshold is reached.
The maximum value you can specify is controlled by a service limit.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html#cfn-glue-job-executionproperty-maxconcurrentruns
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
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

### Vaporshell.Resource.Glue.Job.ExecutionProperty
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html)

