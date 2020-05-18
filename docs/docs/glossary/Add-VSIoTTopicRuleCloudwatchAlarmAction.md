# Add-VSIoTTopicRuleCloudwatchAlarmAction

## SYNOPSIS
Adds an AWS::IoT::TopicRule.CloudwatchAlarmAction resource property to the template.
Describes an action that updates a CloudWatch alarm.

## SYNTAX

```
Add-VSIoTTopicRuleCloudwatchAlarmAction [-AlarmName] <Object> [-RoleArn] <Object> [-StateReason] <Object>
 [-StateValue] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.CloudwatchAlarmAction resource property to the template.
Describes an action that updates a CloudWatch alarm.

## PARAMETERS

### -AlarmName
The CloudWatch alarm name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-alarmname
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

### -RoleArn
The IAM role that allows access to the CloudWatch alarm.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-rolearn
PrimitiveType: String
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

### -StateReason
The reason for the alarm change.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statereason
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

### -StateValue
The value of the alarm state.
Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statevalue
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT.TopicRule.CloudwatchAlarmAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html)

