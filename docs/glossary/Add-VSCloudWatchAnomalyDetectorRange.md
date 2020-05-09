# Add-VSCloudWatchAnomalyDetectorRange

## SYNOPSIS
Adds an AWS::CloudWatch::AnomalyDetector.Range resource property to the template.
Each Range specifies one range of days or times to exclude from use for training or updating an anomaly detection model.

## SYNTAX

```
Add-VSCloudWatchAnomalyDetectorRange [-EndTime] <Object> [-StartTime] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudWatch::AnomalyDetector.Range resource property to the template.
Each Range specifies one range of days or times to exclude from use for training or updating an anomaly detection model.

## PARAMETERS

### -EndTime
The end time of the range to exclude.
The format is yyyy-MM-dd'T'HH:mm:ss.
For example, 2019-07-01T23:59:59.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html#cfn-cloudwatch-anomalydetector-range-endtime
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

### -StartTime
The start time of the range to exclude.
The format is yyyy-MM-dd'T'HH:mm:ss.
For example, 2019-07-01T23:59:59.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html#cfn-cloudwatch-anomalydetector-range-starttime
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudWatch.AnomalyDetector.Range
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html)

