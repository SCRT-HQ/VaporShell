# Add-VSPinpointEmailConfigurationSetTags

## SYNOPSIS
Adds an AWS::PinpointEmail::ConfigurationSet.Tags resource property to the template.
An object that defines the tags (keys and values that you want to associate with the configuration set.

## SYNTAX

```
Add-VSPinpointEmailConfigurationSetTags [[-Value] <Object>] [[-Key] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::PinpointEmail::ConfigurationSet.Tags resource property to the template.
An object that defines the tags (keys and values that you want to associate with the configuration set.

## PARAMETERS

### -Value
The optional part of a key-value pair that defines a tag.
The maximum length of a tag value is 256 characters.
The minimum length is 0 characters.
If you don't want a resource to have a specific tag value, don't specify a value for this parameter.
Amazon Pinpoint will set the value to an empty string.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-value
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
If you specify tags for the configuration set, then this value is required.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-key
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

### Vaporshell.Resource.PinpointEmail.ConfigurationSet.Tags
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html)

