# Add-VSLogsMetricFilterMetricTransformation

## SYNOPSIS
Adds an AWS::Logs::MetricFilter.MetricTransformation resource property to the template.
MetricTransformation is a property of the AWS::Logs::MetricFilter resource that describes how to transform log streams into a CloudWatch metric.

## SYNTAX

```
Add-VSLogsMetricFilterMetricTransformation [[-DefaultValue] <Double>] [-MetricName] <Object>
 [-MetricNamespace] <Object> [-MetricValue] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Logs::MetricFilter.MetricTransformation resource property to the template.
MetricTransformation is a property of the AWS::Logs::MetricFilter resource that describes how to transform log streams into a CloudWatch metric.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DefaultValue
Optional The value to emit when a filter pattern does not match a log event.
This value can be null.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-defaultvalue
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricName
The name of the CloudWatch metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricname
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

### -MetricNamespace
The namespace of the CloudWatch metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricnamespace
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

### -MetricValue
The value that is published to the CloudWatch metric.
For example, if you're counting the occurrences of a particular term like Error, specify 1 for the metric value.
If you're counting the number of bytes transferred, reference the value that is in the log event by using $ followed by the name of the field that you specified in the filter pattern, such as $size.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricvalue
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

### Vaporshell.Resource.Logs.MetricFilter.MetricTransformation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html)

