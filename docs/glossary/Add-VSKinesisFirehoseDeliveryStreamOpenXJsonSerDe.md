# Add-VSKinesisFirehoseDeliveryStreamOpenXJsonSerDe

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.OpenXJsonSerDe resource property to the template.
The OpenX SerDe.
Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format.
This is one of two deserializers you can choose, depending on which one offers the functionality you need.
The other option is the native Hive / HCatalog JsonSerDe.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamOpenXJsonSerDe [[-CaseInsensitive] <Boolean>]
 [[-ColumnToJsonKeyMappings] <Hashtable>] [[-ConvertDotsInJsonKeysToUnderscores] <Boolean>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.OpenXJsonSerDe resource property to the template.
The OpenX SerDe.
Used by Kinesis Data Firehose for deserializing data, which means converting it from the JSON format in preparation for serializing it to the Parquet or ORC format.
This is one of two deserializers you can choose, depending on which one offers the functionality you need.
The other option is the native Hive / HCatalog JsonSerDe.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CaseInsensitive
When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-caseinsensitive
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ColumnToJsonKeyMappings
Maps column names to JSON keys that aren't identical to the column names.
This is useful when the JSON contains keys that are Hive keywords.
For example, timestamp is a Hive keyword.
If you have a JSON key named timestamp, set this parameter to {"ts": "timestamp"} to map this key to a column named ts.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-columntojsonkeymappings
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConvertDotsInJsonKeysToUnderscores
When set to true, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores.
This is useful because Apache Hive does not allow dots in column names.
For example, if the JSON contains a key whose name is "a.b", you can define the column name to be "a_b" when using this option.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-convertdotsinjsonkeystounderscores
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.OpenXJsonSerDe
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html)

