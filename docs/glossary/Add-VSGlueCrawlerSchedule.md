# Add-VSGlueCrawlerSchedule

## SYNOPSIS
Adds an AWS::Glue::Crawler.Schedule resource property to the template.
A scheduling object using a cron statement to schedule an event.

## SYNTAX

```
Add-VSGlueCrawlerSchedule [[-ScheduleExpression] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Glue::Crawler.Schedule resource property to the template.
A scheduling object using a cron statement to schedule an event.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ScheduleExpression
A cron expression used to specify the schedule.
For more information, see Time-Based Schedules for Jobs and Crawlers: https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html.
For example, to run something every day at 12:15 UTC, specify cron15 12 * * ?
*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html#cfn-glue-crawler-schedule-scheduleexpression
PrimitiveType: String
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

### Vaporshell.Resource.Glue.Crawler.Schedule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html)

