# Add-VSImageBuilderImagePipelineSchedule

## SYNOPSIS
Adds an AWS::ImageBuilder::ImagePipeline.Schedule resource property to the template.
A schedule configures how often and when a pipeline will automatically create a new image.

## SYNTAX

```
Add-VSImageBuilderImagePipelineSchedule [[-ScheduleExpression] <Object>]
 [[-PipelineExecutionStartCondition] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ImageBuilder::ImagePipeline.Schedule resource property to the template.
A schedule configures how often and when a pipeline will automatically create a new image.

## PARAMETERS

### -ScheduleExpression
The expression determines how often EC2 Image Builder evaluates your pipelineExecutionStartCondition.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html#cfn-imagebuilder-imagepipeline-schedule-scheduleexpression
UpdateType: Mutable
PrimitiveType: String

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

### -PipelineExecutionStartCondition
The condition configures when the pipeline should trigger a new image build.
When the pipelineExecutionStartCondition is set to EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE, EC2 Image Builder will build a new image only when there are known changes pending.
When it is set to EXPRESSION_MATCH_ONLY, it will build a new image every time the CRON expression matches the current time.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html#cfn-imagebuilder-imagepipeline-schedule-pipelineexecutionstartcondition
UpdateType: Mutable
PrimitiveType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ImageBuilder.ImagePipeline.Schedule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagepipeline-schedule.html)

