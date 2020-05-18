# Add-VSMediaLiveChannelScte20SourceSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.Scte20SourceSettings resource property to the template.
Information about the SCTE-20 captions to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelScte20SourceSettings [[-Source608ChannelNumber] <Object>] [[-Convert608To708] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.Scte20SourceSettings resource property to the template.
Information about the SCTE-20 captions to extract from the input.

The parent of this entity is CaptionSelectorSettings.

## PARAMETERS

### -Source608ChannelNumber
Specifies the 608/708 channel number within the video track from which to extract captions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-source608channelnumber
PrimitiveType: Integer
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

### -Convert608To708
If upconvert, 608 data is both passed through the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708.
Any 708 data present in the source content is discarded.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-convert608to708
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

### Vaporshell.Resource.MediaLive.Channel.Scte20SourceSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html)

