# Add-VSIoTAnalyticsDatasetDatasetContentDeliveryRuleDestination

## SYNOPSIS
Adds an AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination resource property to the template.
The destination to which dataset contents are delivered.

## SYNTAX

```
Add-VSIoTAnalyticsDatasetDatasetContentDeliveryRuleDestination [[-IotEventsDestinationConfiguration] <Object>]
 [[-S3DestinationConfiguration] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination resource property to the template.
The destination to which dataset contents are delivered.

## PARAMETERS

### -IotEventsDestinationConfiguration
Configuration information for delivery of dataset contents to AWS IoT Events.

Type: IotEventsDestinationConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-ioteventsdestinationconfiguration
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

### -S3DestinationConfiguration
Configuration information for delivery of dataset contents to Amazon S3.

Type: S3DestinationConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-s3destinationconfiguration
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

### Vaporshell.Resource.IoTAnalytics.Dataset.DatasetContentDeliveryRuleDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html)

