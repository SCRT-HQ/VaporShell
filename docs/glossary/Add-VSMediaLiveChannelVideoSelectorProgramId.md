# Add-VSMediaLiveChannelVideoSelectorProgramId

## SYNOPSIS
Adds an AWS::MediaLive::Channel.VideoSelectorProgramId resource property to the template.
Used to extract video by the program ID.

## SYNTAX

```
Add-VSMediaLiveChannelVideoSelectorProgramId [[-ProgramId] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.VideoSelectorProgramId resource property to the template.
Used to extract video by the program ID.

The parent of this entity is VideoSelectorSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ProgramId
Selects a specific program from within a multi-program transport stream.
If the program doesn't exist, MediaLive selects the first program within the transport stream by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html#cfn-medialive-channel-videoselectorprogramid-programid
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

### Vaporshell.Resource.MediaLive.Channel.VideoSelectorProgramId
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html)

