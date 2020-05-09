# Add-VSIoTAnalyticsDatasetDeltaTime

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.DeltaTime resource property to the template.
Used to limit data to that which has arrived since the last execution of the action.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetDeltaTime [-TimeExpression] <Object> [-OffsetSeconds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.DeltaTime resource property to the template.
Used to limit data to that which has arrived since the last execution of the action.

## PARAMETERS

### -TimeExpression
An expression by which the time of the message data might be determined.
This can be the name of a timestamp field or a SQL expression that is used to derive the time the message data was generated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-timeexpression
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

### -OffsetSeconds
The number of seconds of estimated in-flight lag time of message data.
When you create dataset contents using message data from a specified timeframe, some message data might still be in flight when processing begins, and so do not arrive in time to be processed.
Use this field to make allowances for the in flight time of your message data, so that data not processed from a previous timeframe is included with the next timeframe.
Otherwise, missed message data would be excluded from processing during the next timeframe too, because its timestamp places it within the previous timeframe.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-offsetseconds
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTAnalytics.Dataset.DeltaTime
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html)

