# Add-VSSyntheticsCanarySchedule

## SYNOPSIS
Adds an AWS::Synthetics::Canary.Schedule resource property to the template.
This structure specifies how often a canary is to make runs and the date and time when it should stop making runs.

## SYNTAX

```
Add-VSSyntheticsCanarySchedule [-Expression] <Object> [-DurationInSeconds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Synthetics::Canary.Schedule resource property to the template.
This structure specifies how often a canary is to make runs and the date and time when it should stop making runs.

## PARAMETERS

### -Expression
A rate expression that defines how often the canary is to run.
The syntax is ratenumber unit.
*unit* can be minute, minutes, or hour.
For example, rate1 minute runs the canary once a minute, rate10 minutes runs it once every 10 minutes, and rate1 hour runs it once every hour.
You can specify a frequency between rate1 minute and rate1 hour.
Specifying rate0 minute or rate0 hour is a special value that causes the canary to run only once when it is started.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-expression
UpdateType: Mutable
PrimitiveType: String

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

### -DurationInSeconds
How long, in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.
If you specify 0, the canary continues making runs until you stop it.
If you omit this field, the default of 0 is used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html#cfn-synthetics-canary-schedule-durationinseconds
UpdateType: Mutable
PrimitiveType: String

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

### Vaporshell.Resource.Synthetics.Canary.Schedule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-schedule.html)

