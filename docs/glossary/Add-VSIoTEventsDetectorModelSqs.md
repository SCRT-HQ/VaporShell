# Add-VSIoTEventsDetectorModelSqs

## SYNOPSIS
Adds an AWS::IoTEvents::DetectorModel.Sqs resource property to the template.
Sends information about the detector model instance and the event which triggered the action to an Amazon SQS queue.

## SYNTAX

```
Add-VSIoTEventsDetectorModelSqs [[-UseBase64] <Boolean>] [[-QueueUrl] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTEvents::DetectorModel.Sqs resource property to the template.
Sends information about the detector model instance and the event which triggered the action to an Amazon SQS queue.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -UseBase64
Set this to TRUE if you want the data to be Base-64 encoded before it is written to the queue.
Otherwise, set this to FALSE.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-usebase64
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueueUrl
The URL of the Amazon SQS queue where the data is written.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html#cfn-iotevents-detectormodel-sqs-queueurl
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

### Vaporshell.Resource.IoTEvents.DetectorModel.Sqs
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sqs.html)

