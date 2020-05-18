# Add-VSStepFunctionsStateMachineLogDestination

## SYNOPSIS
Adds an AWS::StepFunctions::StateMachine.LogDestination resource property to the template.
Defines a destination for LoggingConfiguration.

## SYNTAX

```
Add-VSStepFunctionsStateMachineLogDestination [[-CloudWatchLogsLogGroup] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::StepFunctions::StateMachine.LogDestination resource property to the template.
Defines a destination for LoggingConfiguration.

**Note**

LogDestination is only valid when StateMachineType is set to EXPRESS.
For more information on logging with EXPRESS workflows, see Logging Express Workflows Using CloudWatch Logs: https://docs.aws.amazon.com/step-functions/latest/dg/cw-logs.html.

## PARAMETERS

### -CloudWatchLogsLogGroup
An object describing a CloudWatch log group.
For more information, see AWS::Logs::LogGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html in the AWS CloudFormation User Guide.

Type: CloudWatchLogsLogGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup
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

### Vaporshell.Resource.StepFunctions.StateMachine.LogDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html)

