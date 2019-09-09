# Add-VSMediaLiveChannelAudioSelectorSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.AudioSelectorSettings resource property to the template.
Information about the audio to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelAudioSelectorSettings [[-AudioPidSelection] <Object>]
 [[-AudioLanguageSelection] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.AudioSelectorSettings resource property to the template.
Information about the audio to extract from the input.

The parent of this entity is AudioSelector.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AudioPidSelection
The PID of the audio to select.

Type: AudioPidSelection
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiopidselection
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

### -AudioLanguageSelection
The language code of the audio to select.

Type: AudioLanguageSelection
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiolanguageselection
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

### Vaporshell.Resource.MediaLive.Channel.AudioSelectorSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html)

