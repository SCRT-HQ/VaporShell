# Add-VSMediaLiveChannelInputSpecification

## SYNOPSIS
Adds an AWS::MediaLive::Channel.InputSpecification resource property to the template.
The input specification for this channel.
It specifies the key characteristics of the inputs for this channel: the maximum bitrate, the resolution, and the codec.

## SYNTAX

```
Add-VSMediaLiveChannelInputSpecification [[-Codec] <Object>] [[-MaximumBitrate] <Object>]
 [[-Resolution] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.InputSpecification resource property to the template.
The input specification for this channel.
It specifies the key characteristics of the inputs for this channel: the maximum bitrate, the resolution, and the codec.

This entity is at the top level in the channel.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Codec
The codec to include in the input specification for this channel.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-codec
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

### -MaximumBitrate
The maximum input bitrate for any input attached to this channel.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-maximumbitrate
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

### -Resolution
The resolution for any input attached to this channel.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-resolution
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

### Vaporshell.Resource.MediaLive.Channel.InputSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html)

