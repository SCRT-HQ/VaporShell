# Add-VSIoTEventsDetectorModelEvent

## SYNOPSIS
Adds an AWS::IoTEvents::DetectorModel.Event resource property to the template.
Specifies the "actions" to be performed when the "condition" evaluates to TRUE.

## SYNTAX

```
Add-VSIoTEventsDetectorModelEvent [[-Condition] <Object>] [[-Actions] <Object>] [[-EventName] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTEvents::DetectorModel.Event resource property to the template.
Specifies the "actions" to be performed when the "condition" evaluates to TRUE.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Condition
Optional\] The Boolean expression that when TRUE causes the "actions" to be performed.
If not present, the actions are performed =TRUE; if the expression result is not a Boolean value, the actions are NOT performed =FALSE.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-condition
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

### -Actions
The actions to be performed.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-actions
ItemType: Action
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

### -EventName
The name of the event.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-eventname
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTEvents.DetectorModel.Event
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html)

