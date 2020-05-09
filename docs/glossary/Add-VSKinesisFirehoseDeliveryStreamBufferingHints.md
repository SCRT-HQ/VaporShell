# Add-VSKinesisFirehoseDeliveryStreamBufferingHints

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.BufferingHints resource property to the template.
The BufferingHints property type specifies how Amazon Kinesis Data Firehose (Kinesis Data Firehose buffers incoming data before delivering it to the destination.
The first buffer condition that is satisfied triggers Kinesis Data Firehose to deliver the data.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamBufferingHints [-IntervalInSeconds] <Object> [-SizeInMBs] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.BufferingHints resource property to the template.
The BufferingHints property type specifies how Amazon Kinesis Data Firehose (Kinesis Data Firehose buffers incoming data before delivering it to the destination.
The first buffer condition that is satisfied triggers Kinesis Data Firehose to deliver the data.

## PARAMETERS

### -IntervalInSeconds
The length of time, in seconds, that Kinesis Data Firehose buffers incoming data before delivering it to the destination.
For valid values, see the IntervalInSeconds content for the BufferingHints: https://docs.aws.amazon.com/firehose/latest/APIReference/API_BufferingHints.html data type in the *Amazon Kinesis Data Firehose API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-intervalinseconds
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

### -SizeInMBs
The size of the buffer, in MBs, that Kinesis Data Firehose uses for incoming data before delivering it to the destination.
For valid values, see the SizeInMBs content for the BufferingHints: https://docs.aws.amazon.com/firehose/latest/APIReference/API_BufferingHints.html data type in the *Amazon Kinesis Data Firehose API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-sizeinmbs
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.BufferingHints
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html)

