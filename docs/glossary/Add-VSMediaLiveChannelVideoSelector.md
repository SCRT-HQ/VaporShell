# Add-VSMediaLiveChannelVideoSelector

## SYNOPSIS
Adds an AWS::MediaLive::Channel.VideoSelector resource property to the template.
Information about the video to extract from the input.
An input can contain only one video selector.

## SYNTAX

```
Add-VSMediaLiveChannelVideoSelector [[-SelectorSettings] <Object>] [[-ColorSpace] <Object>]
 [[-ColorSpaceUsage] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.VideoSelector resource property to the template.
Information about the video to extract from the input.
An input can contain only one video selector.

The parent of this entity is InputSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SelectorSettings
Information about the video to select from the content.

Type: VideoSelectorSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-selectorsettings
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

### -ColorSpace
Specifies the color space of an input.
This setting works in tandem with colorSpaceConversion to determine if MediaLive will perform any conversion.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspace
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

### -ColorSpaceUsage
Applies only if colorSpace is a value other than Follow.
This field controls how the value in the colorSpace field is used.
Fallback means that when the input does include color space data, that data is used, but when the input has no color space data, the value in colorSpace is used.
Choose fallback if your input is sometimes missing color space data, but when it does have color space data, that data is correct.
Force means to always use the value in colorSpace.
Choose force if your input usually has no color space data or might have unreliable color space data.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspaceusage
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

### Vaporshell.Resource.MediaLive.Channel.VideoSelector
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html)

