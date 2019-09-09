# Add-VSKinesisFirehoseDeliveryStreamOrcSerDe

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.OrcSerDe resource property to the template.
A serializer to use for converting data to the ORC format before storing it in Amazon S3.
For more information, see Apache ORC: https://orc.apache.org/docs/.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamOrcSerDe [[-BlockSizeBytes] <Int32>] [[-BloomFilterColumns] <Object>]
 [[-BloomFilterFalsePositiveProbability] <Double>] [[-Compression] <Object>]
 [[-DictionaryKeyThreshold] <Double>] [[-EnablePadding] <Boolean>] [[-FormatVersion] <Object>]
 [[-PaddingTolerance] <Double>] [[-RowIndexStride] <Int32>] [[-StripeSizeBytes] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.OrcSerDe resource property to the template.
A serializer to use for converting data to the ORC format before storing it in Amazon S3.
For more information, see Apache ORC: https://orc.apache.org/docs/.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BlockSizeBytes
The Hadoop Distributed File System HDFS block size.
This is useful if you intend to copy the data from Amazon S3 to HDFS before querying.
The default is 256 MiB and the minimum is 64 MiB.
Kinesis Data Firehose uses this value for padding calculations.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-blocksizebytes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -BloomFilterColumns
The column names for which you want Kinesis Data Firehose to create bloom filters.
The default is null.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfiltercolumns
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -BloomFilterFalsePositiveProbability
The Bloom filter false positive probability FPP.
The lower the FPP, the bigger the Bloom filter.
The default value is 0.05, the minimum is 0, and the maximum is 1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfilterfalsepositiveprobability
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compression
The compression code to use over data blocks.
The default is SNAPPY.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-compression
PrimitiveType: String
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

### -DictionaryKeyThreshold
Represents the fraction of the total number of non-null rows.
To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary.
To always use dictionary encoding, set this threshold to 1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-dictionarykeythreshold
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnablePadding
Set this to true to indicate that you want stripes to be padded to the HDFS block boundaries.
This is useful if you intend to copy the data from Amazon S3 to HDFS before querying.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-enablepadding
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatVersion
The version of the file to write.
The possible values are V0_11 and V0_12.
The default is V0_12.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-formatversion
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PaddingTolerance
A number between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size.
The default value is 0.05, which means 5 percent of stripe size.
For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block.
In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space.
This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task.
Kinesis Data Firehose ignores this parameter when EnablePadding is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-paddingtolerance
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -RowIndexStride
The number of rows between index entries.
The default is 10,000 and the minimum is 1,000.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-rowindexstride
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -StripeSizeBytes
The number of bytes in each stripe.
The default is 64 MiB and the minimum is 8 MiB.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-stripesizebytes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.OrcSerDe
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html)

