# Add-VSKinesisFirehoseDeliveryStreamElasticsearchRetryOptions

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions resource property to the template.
The ElasticsearchRetryOptions property type configures the retry behavior for when Amazon Kinesis Data Firehose (Kinesis Data Firehose can't deliver data to Amazon Elasticsearch Service (Amazon ES.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamElasticsearchRetryOptions [-DurationInSeconds] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions resource property to the template.
The ElasticsearchRetryOptions property type configures the retry behavior for when Amazon Kinesis Data Firehose (Kinesis Data Firehose can't deliver data to Amazon Elasticsearch Service (Amazon ES.

## PARAMETERS

### -DurationInSeconds
After an initial failure to deliver to Amazon ES, the total amount of time during which Kinesis Data Firehose re-attempts delivery including the first attempt.
If Kinesis Data Firehose can't deliver the data within the specified time, it writes the data to the backup S3 bucket.
For valid values, see the DurationInSeconds content for the ElasticsearchRetryOptions: https://docs.aws.amazon.com/firehose/latest/APIReference/API_ElasticsearchRetryOptions.html data type in the *Amazon Kinesis Data Firehose API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.ElasticsearchRetryOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html)

