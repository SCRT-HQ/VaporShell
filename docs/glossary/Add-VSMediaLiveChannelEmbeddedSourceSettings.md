# Add-VSMediaLiveChannelEmbeddedSourceSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.EmbeddedSourceSettings resource property to the template.
Information about the embedded captions to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelEmbeddedSourceSettings [[-Source608ChannelNumber] <Int32>] [[-Scte20Detection] <Object>]
 [[-Source608TrackNumber] <Int32>] [[-Convert608To708] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.EmbeddedSourceSettings resource property to the template.
Information about the embedded captions to extract from the input.

The parent of this entity is CaptionSelectorSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Source608ChannelNumber
Specifies the 608/708 channel number within the video track from which to extract captions.
This is unused for passthrough.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-source608channelnumber
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scte20Detection
Set to "auto" to handle streams with intermittent or non-aligned SCTE-20 and embedded captions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-scte20detection
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

### -Source608TrackNumber
This field is unused and deprecated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-source608tracknumber
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -Convert608To708
If this is upconvert, 608 data is both passed through the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708.
If 708 data is present in the source content, it is discarded.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-convert608to708
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaLive.Channel.EmbeddedSourceSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html)

