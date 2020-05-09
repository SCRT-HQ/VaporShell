# Add-VSKinesisFirehoseDeliveryStreamInputFormatConfiguration

## SYNOPSIS
Adds an AWS::KinesisFirehose::DeliveryStream.InputFormatConfiguration resource property to the template.
Specifies the deserializer you want to use to convert the format of the input data.
This parameter is required if Enabled is set to true.

## SYNTAX

```
Add-VSKinesisFirehoseDeliveryStreamInputFormatConfiguration [-Deserializer] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::KinesisFirehose::DeliveryStream.InputFormatConfiguration resource property to the template.
Specifies the deserializer you want to use to convert the format of the input data.
This parameter is required if Enabled is set to true.

## PARAMETERS

### -Deserializer
Specifies which deserializer to use.
You can choose either the Apache Hive JSON SerDe or the OpenX JSON SerDe.
If both are non-null, the server rejects the request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-inputformatconfiguration-deserializer
Type: Deserializer
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

### Vaporshell.Resource.KinesisFirehose.DeliveryStream.InputFormatConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html)

