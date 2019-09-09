# Add-VSCloudWatchAlarmMetricDataQuery

## SYNOPSIS
Adds an AWS::CloudWatch::Alarm.MetricDataQuery resource property to the template.
The MetricDataQuery property type specifies the metric data to return, and whether this call is just retrieving a batch set of data for one metric, or is performing a math expression on metric data.

## SYNTAX

```
Add-VSCloudWatchAlarmMetricDataQuery [[-Expression] <Object>] [-Id] <Object> [[-Label] <Object>]
 [[-MetricStat] <Object>] [[-ReturnData] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CloudWatch::Alarm.MetricDataQuery resource property to the template.
The MetricDataQuery property type specifies the metric data to return, and whether this call is just retrieving a batch set of data for one metric, or is performing a math expression on metric data.

Any expression used must return a single time series.
For more information, see Metric Math Syntax and Functions: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax in the *Amazon CloudWatch User Guide*.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Expression
The math expression to be performed on the returned data, if this object is performing a math expression.
This expression can use the Id of the other metrics to refer to those metrics, and can also use the Id of other expressions to use the result of those expressions.
For more information about metric math expressions, see Metric Math Syntax and Functions: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax in the *Amazon CloudWatch User Guide*.
Within each MetricDataQuery object, you must specify either Expression or MetricStat but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-expression
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

### -Id
A short name used to tie this object to the results in the response.
This name must be unique within a single call to GetMetricData.
If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the mathematical expression.
The valid characters are letters, numbers, and underscore.
The first character must be a lowercase letter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-id
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

### -Label
A human-readable label for this metric or expression.
This is especially useful if this is an expression, so that you know what the value represents.
If the metric or expression is shown in a CloudWatch dashboard widget, the label is shown.
If Label is omitted, CloudWatch generates a default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-label
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricStat
The metric to be returned, along with statistics, period, and units.
Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.
Within one MetricDataQuery object, you must specify either Expression or MetricStat but not both.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-metricstat
Type: MetricStat
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReturnData
This option indicates whether to return the timestamps and raw data values of this metric.
If you are performing this call just to do math expressions and do not also need the raw data returned, you can specify False.
If you omit this, the default of True is used.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-returndata
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CloudWatch.Alarm.MetricDataQuery
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html)

