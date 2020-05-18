# Add-VSIoTTopicRuleCloudwatchMetricAction

## SYNOPSIS
Adds an AWS::IoT::TopicRule.CloudwatchMetricAction resource property to the template.
Describes an action that captures a CloudWatch metric.

## SYNTAX

```
Add-VSIoTTopicRuleCloudwatchMetricAction [-MetricName] <Object> [-MetricNamespace] <Object>
 [[-MetricTimestamp] <Object>] [-MetricUnit] <Object> [-MetricValue] <Object> [-RoleArn] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::TopicRule.CloudwatchMetricAction resource property to the template.
Describes an action that captures a CloudWatch metric.

## PARAMETERS

### -MetricName
The CloudWatch metric name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricname
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

### -MetricNamespace
The CloudWatch metric namespace name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricnamespace
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

### -MetricTimestamp
An optional Unix timestamp: https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metrictimestamp
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

### -MetricUnit
The metric unit: https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit supported by CloudWatch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricunit
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

### -MetricValue
The CloudWatch metric value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-metricvalue
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleArn
The IAM role that allows access to the CloudWatch metric.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html#cfn-iot-topicrule-cloudwatchmetricaction-rolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoT.TopicRule.CloudwatchMetricAction
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchmetricaction.html)

