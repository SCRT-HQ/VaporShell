# Add-VSKinesisFirehoseDeliveryStreamProcessingConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration resource property to the template.
The ProcessingConfiguration property configures data processing for an Amazon Kinesis Data Firehose delivery stream.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamProcessingConfiguration [[-Enabled] <Object>] [[-Processors] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration resource property to the template.
The ProcessingConfiguration property configures data processing for an Amazon Kinesis Data Firehose delivery stream.

## PARAMETERS

### -Enabled
Indicates whether data processing is enabled true or disabled false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-enabled
PrimitiveType: Boolean
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

### -Processors
The data processors.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-processors
DuplicatesAllowed: False
ItemType: Processor
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.ProcessingConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html)

