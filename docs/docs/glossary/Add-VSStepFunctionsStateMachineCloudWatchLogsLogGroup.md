# Add-VSStepFunctionsStateMachineCloudWatchLogsLogGroup

## SYNOPSIS
Adds an AWS::StepFunctions::StateMachine.CloudWatchLogsLogGroup resource property to the template.
Defines a CloudWatch log group.

## SYNTAX

```
Add-VSStepFunctionsStateMachineCloudWatchLogsLogGroup [-LogGroupArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::StepFunctions::StateMachine.CloudWatchLogsLogGroup resource property to the template.
Defines a CloudWatch log group.

**Note**

CloudWatchLogsLogGroup is only valid when StateMachineType is set to EXPRESS.
For more information see Standard Versus Express Workflows: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-standard-vs-express.html in the AWS Step Functions Developer Guide.

## PARAMETERS

### -LogGroupArn
The ARN of the the CloudWatch log group to which you want your logs emitted to.
The ARN must end with :*

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup-loggrouparn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.StepFunctions.StateMachine.CloudWatchLogsLogGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html)

