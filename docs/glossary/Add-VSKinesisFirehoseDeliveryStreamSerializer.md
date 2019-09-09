# Add-VSKinesisFirehoseDeliveryStreamSerializer

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.Serializer resource property to the template.
The serializer that you want Kinesis Data Firehose to use to convert data to the target format before writing it to Amazon S3.
Kinesis Data Firehose supports two types of serializers: the ORC SerDe: https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html and the Parquet SerDe: https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamSerializer [[-OrcSerDe] <Object>] [[-ParquetSerDe] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.Serializer resource property to the template.
The serializer that you want Kinesis Data Firehose to use to convert data to the target format before writing it to Amazon S3.
Kinesis Data Firehose supports two types of serializers: the ORC SerDe: https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html and the Parquet SerDe: https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -OrcSerDe
A serializer to use for converting data to the ORC format before storing it in Amazon S3.
For more information, see Apache ORC: https://orc.apache.org/docs/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-orcserde
Type: OrcSerDe
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

### -ParquetSerDe
A serializer to use for converting data to the Parquet format before storing it in Amazon S3.
For more information, see Apache Parquet: https://parquet.apache.org/documentation/latest/.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-parquetserde
Type: ParquetSerDe
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

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.Serializer
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html)

