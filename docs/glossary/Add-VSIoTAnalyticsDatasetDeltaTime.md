# Add-VSIoTAnalyticsDatasetDeltaTime

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.DeltaTime resource property to the template.
Used to limit data to that which has arrived since the last execution of the action.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetDeltaTime [-TimeExpression] <Object> [-OffsetSeconds] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.DeltaTime resource property to the template.
Used to limit data to that which has arrived since the last execution of the action.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -TimeExpression
An expression by which the time of the message data may be determined.
This may be the name of a timestamp field, or a SQL expression which is used to derive the time the message data was generated.

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
The number of seconds of estimated "in flight" lag time of message data.
When you create data set contents using message data from a specified time frame, some message data may still be "in flight" when processing begins, and so will not arrive in time to be processed.
Use this field to make allowances for the "in flight" time of your message data, so that data not processed from a previous time frame will be included with the next time frame.
Without this, missed message data would be excluded from processing during the next time frame as well, because its timestamp places it within the previous time frame.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-offsetseconds
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
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

