# Add-VSMediaLiveChannelVideoSelectorPid

## SYNOPSIS
Adds an AWS::MediaLive::Channel.VideoSelectorPid resource property to the template.
Selects a specific PID from within a video source.

## SYNTAX

```
Add-VSMediaLiveChannelVideoSelectorPid [[-Pid] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.VideoSelectorPid resource property to the template.
Selects a specific PID from within a video source.

The parent of this entity is VideoSelectorSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Pid
Selects a specific PID from within a video source.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html#cfn-medialive-channel-videoselectorpid-pid
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaLive.Channel.VideoSelectorPid
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html)

