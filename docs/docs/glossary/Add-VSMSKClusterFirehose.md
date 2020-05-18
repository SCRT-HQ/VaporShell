# Add-VSMSKClusterFirehose

## SYNOPSIS
Adds an AWS::MSK::Cluster.Firehose resource property to the template.
Details of the Kinesis Data Firehose delivery stream that is the destination for broker logs.

## SYNTAX

```
Add-VSMSKClusterFirehose [[-DeliveryStream] <Object>] [-Enabled] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MSK::Cluster.Firehose resource property to the template.
Details of the Kinesis Data Firehose delivery stream that is the destination for broker logs.

## PARAMETERS

### -DeliveryStream
The Kinesis Data Firehose delivery stream that is the destination for broker logs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html#cfn-msk-cluster-firehose-deliverystream
PrimitiveType: String
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

### -Enabled
Specifies whether broker logs get sent to the specified Kinesis Data Firehose delivery stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html#cfn-msk-cluster-firehose-enabled
PrimitiveType: Boolean
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

### Vaporshell.Resource.MSK.Cluster.Firehose
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-firehose.html)

