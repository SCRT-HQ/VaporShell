# Add-VSApplicationAutoScalingScalableTargetScheduledAction

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalableTarget.ScheduledAction resource property to the template.
ScheduledAction is a property of ScalableTarget: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html that specifies a scheduled action for a scalable target.

## SYNTAX

```
Add-VSApplicationAutoScalingScalableTargetScheduledAction [[-EndTime] <Object>]
 [[-ScalableTargetAction] <Object>] [-Schedule] <Object> [-ScheduledActionName] <Object>
 [[-StartTime] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalableTarget.ScheduledAction resource property to the template.
ScheduledAction is a property of ScalableTarget: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html that specifies a scheduled action for a scalable target.

For more information, see PutScheduledAction: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_PutScheduledAction.html in the *Application Auto Scaling API Reference*.

## PARAMETERS

### -EndTime
The date and time for the recurring schedule to end.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-endtime
PrimitiveType: Timestamp
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

### -ScalableTargetAction
The new minimum and maximum capacity.
You can set both values or just one.
At the scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out to the minimum capacity.
If the current capacity is above the maximum capacity, Application Auto Scaling scales in to the maximum capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-scalabletargetaction
Type: ScalableTargetAction
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

### -Schedule
The schedule for this action.
The following formats are supported:
+ At expressions - "atyyyy-mm-ddThh:mm:ss"
+ Rate expressions - "ratevalue unit"
+ Cron expressions - "cronfields"
At expressions are useful for one-time schedules.
Specify the time in UTC.
For rate expressions, *value* is a positive integer and *unit* is minute | minutes | hour | hours | day | days.
For more information about cron expressions, see Cron Expressions: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions in the *Amazon CloudWatch Events User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-schedule
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

### -ScheduledActionName
The name of the scheduled action.
This name must be unique among all other scheduled actions on the specified scalable target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-scheduledactionname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
The date and time that the action is scheduled to start.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-starttime
PrimitiveType: Timestamp
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApplicationAutoScaling.ScalableTarget.ScheduledAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html)

