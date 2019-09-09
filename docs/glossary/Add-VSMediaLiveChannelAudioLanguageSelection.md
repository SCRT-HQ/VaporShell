# Add-VSMediaLiveChannelAudioLanguageSelection

## SYNOPSIS
Adds an AWS::MediaLive::Channel.AudioLanguageSelection resource property to the template.
Information about the audio language to extract.

## SYNTAX

```
Add-VSMediaLiveChannelAudioLanguageSelection [[-LanguageCode] <Object>] [[-LanguageSelectionPolicy] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.AudioLanguageSelection resource property to the template.
Information about the audio language to extract.

The parent of this entity is AudioSelectorSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -LanguageCode
Selects a specific three-letter language code from within an audio source.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html#cfn-medialive-channel-audiolanguageselection-languagecode
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

### -LanguageSelectionPolicy
When set to "strict," the transport stream demux strictly identifies audio streams by their language descriptor.
If a PMT update occurs such that an audio stream matching the initially selected language is no longer present, then mute is encoded until the language returns.
If set to "loose," then on a PMT update the demux chooses another audio stream in the program with the same stream type if it can't find one with the same language.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html#cfn-medialive-channel-audiolanguageselection-languageselectionpolicy
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

### Vaporshell.Resource.MediaLive.Channel.AudioLanguageSelection
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html)

