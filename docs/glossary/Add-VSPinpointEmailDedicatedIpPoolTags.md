# Add-VSPinpointEmailDedicatedIpPoolTags

## SYNOPSIS
Adds an AWS::PinpointEmail::DedicatedIpPool.Tags resource property to the template.
An object that defines the tags (keys and values that you want to associate with the dedicated IP pool.

## SYNTAX

```
Add-VSPinpointEmailDedicatedIpPoolTags [[-Value] <Object>] [[-Key] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::DedicatedIpPool.Tags resource property to the template.
An object that defines the tags (keys and values that you want to associate with the dedicated IP pool.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Value
The optional part of a key-value pair that defines a tag.
The maximum length of a tag value is 256 characters.
The minimum length is 0 characters.
If you don't want a resource to have a specific tag value, don't specify a value for this parameter.
Amazon Pinpoint will set the value to an empty string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html#cfn-pinpointemail-dedicatedippool-tags-value
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

### -Key
One part of a key-value pair that defines a tag.
The maximum length of a tag key is 128 characters.
The minimum length is 1 character.
If you specify tags for the dedicated IP pool, then this value is required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html#cfn-pinpointemail-dedicatedippool-tags-key
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

### Vaporshell.Resource.PinpointEmail.DedicatedIpPool.Tags
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html)

