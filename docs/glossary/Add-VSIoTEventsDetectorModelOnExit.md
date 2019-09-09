# Add-VSIoTEventsDetectorModelOnExit

## SYNOPSIS
Adds an AWS::IoTEvents::DetectorModel.OnExit resource property to the template.
When exiting this state, perform these "actions" if the "condition" is TRUE.

## SYNTAX

```
Add-VSIoTEventsDetectorModelOnExit [[-Events] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTEvents::DetectorModel.OnExit resource property to the template.
When exiting this state, perform these "actions" if the "condition" is TRUE.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Events
Specifies the actions that are performed when the state is exited and the "condition" is TRUE.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html#cfn-iotevents-detectormodel-onexit-events
ItemType: Event
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTEvents.DetectorModel.OnExit
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html)

