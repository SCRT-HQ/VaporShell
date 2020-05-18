# Add-VSKinesisFirehoseDeliveryStreamParquetSerDe

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.ParquetSerDe resource property to the template.
A serializer to use for converting data to the Parquet format before storing it in Amazon S3.
For more information, see Apache Parquet: https://parquet.apache.org/documentation/latest/.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamParquetSerDe [[-BlockSizeBytes] <Object>] [[-Compression] <Object>]
 [[-EnableDictionaryCompression] <Object>] [[-MaxPaddingBytes] <Object>] [[-PageSizeBytes] <Object>]
 [[-WriterVersion] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.ParquetSerDe resource property to the template.
A serializer to use for converting data to the Parquet format before storing it in Amazon S3.
For more information, see Apache Parquet: https://parquet.apache.org/documentation/latest/.

## PARAMETERS

### -BlockSizeBytes
The Hadoop Distributed File System HDFS block size.
This is useful if you intend to copy the data from Amazon S3 to HDFS before querying.
The default is 256 MiB and the minimum is 64 MiB.
Kinesis Data Firehose uses this value for padding calculations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-blocksizebytes
PrimitiveType: Integer
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

### -Compression
The compression code to use over data blocks.
The possible values are UNCOMPRESSED, SNAPPY, and GZIP, with the default being SNAPPY.
Use SNAPPY for higher decompression speed.
Use GZIP if the compression ratio is more important than speed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-compression
PrimitiveType: String
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

### -EnableDictionaryCompression
Indicates whether to enable dictionary compression.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-enabledictionarycompression
PrimitiveType: Boolean
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

### -MaxPaddingBytes
The maximum amount of padding to apply.
This is useful if you intend to copy the data from Amazon S3 to HDFS before querying.
The default is 0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-maxpaddingbytes
PrimitiveType: Integer
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

### -PageSizeBytes
The Parquet page size.
Column chunks are divided into pages.
A page is conceptually an indivisible unit in terms of compression and encoding.
The minimum value is 64 KiB and the default is 1 MiB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-pagesizebytes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WriterVersion
Indicates the version of row format to output.
The possible values are V1 and V2.
The default is V1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-writerversion
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.ParquetSerDe
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html)

