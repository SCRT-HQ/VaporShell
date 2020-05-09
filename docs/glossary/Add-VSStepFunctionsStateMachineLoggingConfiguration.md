# Add-VSStepFunctionsStateMachineLoggingConfiguration

## SYNOPSIS
Adds an AWS::StepFunctions::StateMachine.LoggingConfiguration resource property to the template.
Defines what execution history events are logged and where they are logged.

## SYNTAX

```
Add-VSStepFunctionsStateMachineLoggingConfiguration [[-IncludeExecutionData] <Object>]
 [[-Destinations] <Object>] [[-Level] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::StepFunctions::StateMachine.LoggingConfiguration resource property to the template.
Defines what execution history events are logged and where they are logged.

**Note**

By default, the level is set to OFF.
For more information see Log Levels: https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html in the AWS Step Functions User Guide.

## PARAMETERS

### -IncludeExecutionData
Determines whether execution data is included in your log.
When set to FALSE, data is excluded.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-includeexecutiondata
PrimitiveType: Boolean
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

### -Destinations
An array of objects that describes where your execution history events will be logged.
Limited to size 1.
Required, if your log level is not set to OFF.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-destinations
ItemType: LogDestination
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

### -Level
Defines which category of execution history events are logged.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-level
PrimitiveType: String
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

### Vaporshell.Resource.StepFunctions.StateMachine.LoggingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html)

