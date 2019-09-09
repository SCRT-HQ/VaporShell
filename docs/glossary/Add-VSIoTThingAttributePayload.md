# Add-VSIoTThingAttributePayload

## SYNOPSIS
Adds an AWS::IoT::Thing.AttributePayload resource property to the template.
The AttributePayload property specifies up to three attributes for an AWS IoT as key-value pairs.
AttributePayload is a property of the AWS::IoT::Thing: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html resource.

## SYNTAX

```
Add-VSIoTThingAttributePayload [[-Attributes] <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::IoT::Thing.AttributePayload resource property to the template.
The AttributePayload property specifies up to three attributes for an AWS IoT as key-value pairs.
AttributePayload is a property of the AWS::IoT::Thing: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Attributes
A JSON string containing up to three key-value pair in JSON format.
For example:
{"attributes":{"string1":"string2"}}

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes
DuplicatesAllowed: False
PrimitiveItemType: String
Type: Map
UpdateType: Mutable

```yaml
Type: Hashtable
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

### Vaporshell.Resource.IoT.Thing.AttributePayload
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html)

