# Add-VSEventsRuleKinesisParameters

## SYNOPSIS
Adds an AWS::Events::Rule.KinesisParameters resource property to the template.
The KinesisParameters property type specifies settings that control shard assignment for a Kinesis data stream target.

## SYNTAX

```
Add-VSEventsRuleKinesisParameters [-PartitionKeyPath] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Events::Rule.KinesisParameters resource property to the template.
The KinesisParameters property type specifies settings that control shard assignment for a Kinesis data stream target.

KinesisParameters is a property of the Target: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html property type.

This object enables you to specify a JSON path to extract from the event and use as the partition key for the Amazon Kinesis data stream, so that you can control the shard that the event goes to.
If you don't include this parameter, the default is to use the eventId as the partition key.

## PARAMETERS

### -PartitionKeyPath
The JSON path to be extracted from the event and used as the partition key.
For more information, see Partition Key: https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key in the *Amazon Kinesis Data Streams Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html#cfn-events-rule-kinesisparameters-partitionkeypath
PrimitiveType: String
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

### Vaporshell.Resource.Events.Rule.KinesisParameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html)

