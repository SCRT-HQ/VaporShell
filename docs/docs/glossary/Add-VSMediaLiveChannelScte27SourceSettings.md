# Add-VSMediaLiveChannelScte27SourceSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.Scte27SourceSettings resource property to the template.
Information about the SCTE-27 captions to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelScte27SourceSettings [[-Pid] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.Scte27SourceSettings resource property to the template.
Information about the SCTE-27 captions to extract from the input.

The parent of this entity is CaptionSelectorSettings.

## PARAMETERS

### -Pid
The PID field is used in conjunction with the captions selector languageCode field as follows: Specify PID and Language: Extracts captions from that PID; the language is "informational." Specify PID and omit Language: Extracts the specified PID.
Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be.
Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages are passed through.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-pid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaLive.Channel.Scte27SourceSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html)

