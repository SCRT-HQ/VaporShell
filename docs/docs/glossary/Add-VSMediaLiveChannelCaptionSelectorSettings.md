# Add-VSMediaLiveChannelCaptionSelectorSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template.
Captions Selector Settings

## SYNTAX

```
Add-VSMediaLiveChannelCaptionSelectorSettings [[-DvbSubSourceSettings] <Object>]
 [[-Scte27SourceSettings] <Object>] [[-AribSourceSettings] <Object>] [[-EmbeddedSourceSettings] <Object>]
 [[-Scte20SourceSettings] <Object>] [[-TeletextSourceSettings] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.CaptionSelectorSettings resource property to the template.
Captions Selector Settings

The parent of this entity is CaptionSelector.

## PARAMETERS

### -DvbSubSourceSettings
Information about the DVB Sub captions to extract from the input.

Type: DvbSubSourceSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-dvbsubsourcesettings
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

### -Scte27SourceSettings
Information about the SCTE-27 captions to extract from the input.

Type: Scte27SourceSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte27sourcesettings
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

### -AribSourceSettings
Information about the ARIB captions to extract from the input.

Type: AribSourceSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-aribsourcesettings
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

### -EmbeddedSourceSettings
Information about the embedded captions to extract from the input.

Type: EmbeddedSourceSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-embeddedsourcesettings
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scte20SourceSettings
Information about the SCTE-20 captions to extract from the input.

Type: Scte20SourceSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte20sourcesettings
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TeletextSourceSettings
Information about the Teletext captions to extract from the input.

Type: TeletextSourceSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-teletextsourcesettings
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaLive.Channel.CaptionSelectorSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html)

