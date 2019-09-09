# Add-VSIoTEventsInputInputDefinition

## SYNOPSIS
Adds an AWS::IoTEvents::Input.InputDefinition resource property to the template.
The definition of the input.

## SYNTAX

```
Add-VSIoTEventsInputInputDefinition [[-Attributes] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTEvents::Input.InputDefinition resource property to the template.
The definition of the input.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Attributes
The attributes from the JSON payload that are made available by the input.
Inputs are derived from messages sent to the AWS IoT Events system using BatchPutMessage.
Each such message contains a JSON payload, and those attributes and their paired values specified here are available for use in the "condition" expressions used by detectors that monitor this input.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html#cfn-iotevents-input-inputdefinition-attributes
ItemType: Attribute
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

### Vaporshell.Resource.IoTEvents.Input.InputDefinition
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html)

