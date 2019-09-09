# Add-VSIoTEventsDetectorModelFirehose

## SYNOPSIS
Adds an AWS::IoTEvents::DetectorModel.Firehose resource property to the template.
Sends information about the detector model instance and the event which triggered the action to a Kinesis Data Firehose delivery stream.

## SYNTAX

```
Add-VSIoTEventsDetectorModelFirehose [[-DeliveryStreamName] <Object>] [[-Separator] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTEvents::DetectorModel.Firehose resource property to the template.
Sends information about the detector model instance and the event which triggered the action to a Kinesis Data Firehose delivery stream.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DeliveryStreamName
The name of the Kinesis Data Firehose delivery stream where the data is written.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-deliverystreamname
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

### -Separator
A character separator that is used to separate records written to the Kinesis Data Firehose delivery stream.
Valid values are: 'n' newline, 't' tab, 'rn' Windows newline, ',' comma.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-separator
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTEvents.DetectorModel.Firehose
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html)

