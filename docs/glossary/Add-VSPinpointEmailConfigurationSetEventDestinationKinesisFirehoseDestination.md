# Add-VSPinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.KinesisFirehoseDestination resource property to the template.
An object that defines an Amazon Kinesis Data Firehose destination for email events.
You can use Amazon Kinesis Data Firehose to stream data to other services, such as Amazon S3 and Amazon Redshift.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetEventDestinationKinesisFirehoseDestination [-DeliveryStreamArn] <Object>
 [-IamRoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSetEventDestination.KinesisFirehoseDestination resource property to the template.
An object that defines an Amazon Kinesis Data Firehose destination for email events.
You can use Amazon Kinesis Data Firehose to stream data to other services, such as Amazon S3 and Amazon Redshift.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeliveryStreamArn
The Amazon Resource Name ARN of the Amazon Kinesis Data Firehose stream that Amazon Pinpoint sends email events to.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
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

### -IamRoleArn
The Amazon Resource Name ARN of the IAM role that Amazon Pinpoint uses when sending email events to the Amazon Kinesis Data Firehose stream.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
PrimitiveType: String
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

### Vaporshell.Resource.PinpointEmail.ConfigurationSetEventDestination.KinesisFirehoseDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html)

