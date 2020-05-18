# Add-VSKinesisFirehoseDeliveryStreamHiveJsonSerDe

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.HiveJsonSerDe resource property to the template.
The native Hive / HCatalog JsonSerDe.
Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format.
This is one of two deserializers you can choose, depending on which one offers the functionality you need.
The other option is the OpenX SerDe.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamHiveJsonSerDe [[-TimestampFormats] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.HiveJsonSerDe resource property to the template.
The native Hive / HCatalog JsonSerDe.
Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format.
This is one of two deserializers you can choose, depending on which one offers the functionality you need.
The other option is the OpenX SerDe.

## PARAMETERS

### -TimestampFormats
Indicates how you want Kinesis Data Firehose to parse the date and timestamps that may be present in your input data JSON.
To specify these format strings, follow the pattern syntax of JodaTime's DateTimeFormat format strings.
For more information, see Class DateTimeFormat: https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html.
You can also use the special value millis to parse timestamps in epoch milliseconds.
If you don't specify a format, Kinesis Data Firehose uses java.sql.Timestamp::valueOf by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html#cfn-kinesisfirehose-deliverystream-hivejsonserde-timestampformats
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.HiveJsonSerDe
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html)

