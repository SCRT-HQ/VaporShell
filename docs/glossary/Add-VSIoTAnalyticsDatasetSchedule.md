# Add-VSIoTAnalyticsDatasetSchedule

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.Schedule resource property to the template.
The schedule for when to trigger an update.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetSchedule [-ScheduleExpression] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.Schedule resource property to the template.
The schedule for when to trigger an update.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ScheduleExpression
The expression that defines when to trigger an update.
For more information, see  Schedule Expressions for Rules: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html in the Amazon CloudWatch documentation.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html#cfn-iotanalytics-dataset-trigger-schedule-scheduleexpression
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

### Vaporshell.Resource.IoTAnalytics.Dataset.Schedule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html)

