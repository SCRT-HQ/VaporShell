# Add-VSKinesisFirehoseDeliveryStreamDeserializer

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.Deserializer resource property to the template.
The deserializer you want Kinesis Data Firehose to use for converting the input data from JSON.
Kinesis Data Firehose then serializes the data to its final format using the Serializer.
Kinesis Data Firehose supports two types of deserializers: the Apache Hive JSON SerDe: https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON and the OpenX JSON SerDe: https://github.com/rcongiu/Hive-JSON-Serde.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamDeserializer [[-HiveJsonSerDe] <Object>] [[-OpenXJsonSerDe] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.Deserializer resource property to the template.
The deserializer you want Kinesis Data Firehose to use for converting the input data from JSON.
Kinesis Data Firehose then serializes the data to its final format using the Serializer.
Kinesis Data Firehose supports two types of deserializers: the Apache Hive JSON SerDe: https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON and the OpenX JSON SerDe: https://github.com/rcongiu/Hive-JSON-Serde.

## PARAMETERS

### -HiveJsonSerDe
The native Hive / HCatalog JsonSerDe.
Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format.
This is one of two deserializers you can choose, depending on which one offers the functionality you need.
The other option is the OpenX SerDe.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-hivejsonserde
Type: HiveJsonSerDe
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

### -OpenXJsonSerDe
The OpenX SerDe.
Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format.
This is one of two deserializers you can choose, depending on which one offers the functionality you need.
The other option is the native Hive / HCatalog JsonSerDe.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-openxjsonserde
Type: OpenXJsonSerDe
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

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.Deserializer
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html)

