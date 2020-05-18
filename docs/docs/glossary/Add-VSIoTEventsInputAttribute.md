# Add-VSIoTEventsInputAttribute

## SYNOPSIS
Adds an AWS::IoTEvents::Input.Attribute resource property to the template.
The attributes from the JSON payload that are made available by the input.
Inputs are derived from messages sent to the AWS IoT Events system using BatchPutMessage.
Each such message contains a JSON payload.
Those attributes (and their paired values specified here are available for use in the condition expressions used by detectors.

## SYNTAX

```
Add-VSIoTEventsInputAttribute [[-JsonPath] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoTEvents::Input.Attribute resource property to the template.
The attributes from the JSON payload that are made available by the input.
Inputs are derived from messages sent to the AWS IoT Events system using BatchPutMessage.
Each such message contains a JSON payload.
Those attributes (and their paired values specified here are available for use in the condition expressions used by detectors.

## PARAMETERS

### -JsonPath
An expression that specifies an attribute-value pair in a JSON structure.
Use this to specify an attribute from the JSON payload that is made available by the input.
Inputs are derived from messages sent to AWS IoT Events BatchPutMessage.
Each such message contains a JSON payload.
The attribute and its paired value specified here are available for use in the condition expressions used by detectors.
Syntax: \<field-name\>.\<field-name\>...

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html#cfn-iotevents-input-attribute-jsonpath
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.IoTEvents.Input.Attribute
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html)

