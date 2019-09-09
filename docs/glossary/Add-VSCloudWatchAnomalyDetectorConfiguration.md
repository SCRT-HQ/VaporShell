# Add-VSCloudWatchAnomalyDetectorConfiguration

## SYNOPSIS
Adds an AWS::CloudWatch::AnomalyDetector.Configuration resource property to the template.
Specifies details about how the anomaly detection model is to be trained, including time ranges to exclude when training and updating the model.
The configuration can also include the time zone to use for the metric.

## SYNTAX

```
Add-VSCloudWatchAnomalyDetectorConfiguration [[-MetricTimeZone] <Object>] [[-ExcludedTimeRanges] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudWatch::AnomalyDetector.Configuration resource property to the template.
Specifies details about how the anomaly detection model is to be trained, including time ranges to exclude when training and updating the model.
The configuration can also include the time zone to use for the metric.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -MetricTimeZone
The time zone to use for the metric.
This is useful to enable the model to automatically account for daylight savings time changes if the metric is sensitive to such time changes.
To specify a time zone, use the name of the time zone as specified in the standard tz database.
For more information, see tz database: https://en.wikipedia.org/wiki/Tz_database.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-metrictimezone
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

### -ExcludedTimeRanges
Specifies an array of time ranges to exclude from use when the anomaly detection model is trained and updated.
Use this to make sure that events that could cause unusual values for the metric, such as deployments, aren't used when CloudWatch creates or updates the model.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-excludedtimeranges
ItemType: Range
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudWatch.AnomalyDetector.Configuration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html)

