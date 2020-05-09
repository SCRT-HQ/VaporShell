# Add-VSMediaLiveChannelVideoSelectorSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.VideoSelectorSettings resource property to the template.
Information about the video to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelVideoSelectorSettings [[-VideoSelectorProgramId] <Object>] [[-VideoSelectorPid] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.VideoSelectorSettings resource property to the template.
Information about the video to extract from the input.

The parent of this entity is VideoSelector.

## PARAMETERS

### -VideoSelectorProgramId
Used to extract video by program ID.

Type: VideoSelectorProgramId
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorprogramid
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

### -VideoSelectorPid
Used to extract video by PID.

Type: VideoSelectorPid
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorpid
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

### Vaporshell.Resource.MediaLive.Channel.VideoSelectorSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html)

