# Add-VSMediaLiveChannelHlsInputSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.HlsInputSettings resource property to the template.
Information about how to connect to the upstream system.

## SYNTAX

```
Add-VSMediaLiveChannelHlsInputSettings [[-BufferSegments] <Object>] [[-Retries] <Object>]
 [[-Bandwidth] <Object>] [[-RetryInterval] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.HlsInputSettings resource property to the template.
Information about how to connect to the upstream system.

The parent of this entity is NetworkInputSettings.

## PARAMETERS

### -BufferSegments
When specified, reading of the HLS input begins this many buffer segments from the end most recently written segment.
When not specified, the HLS input begins with the first segment specified in the m3u8.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-buffersegments
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

### -Retries
The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retries
PrimitiveType: Integer
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

### -Bandwidth
When specified, the HLS stream with the m3u8 BANDWIDTH that most closely matches this value is chosen.
Otherwise, the highest bandwidth stream in the m3u8 is chosen.
The bitrate is specified in bits per second, as in an HLS manifest.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-bandwidth
PrimitiveType: Integer
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

### -RetryInterval
The number of seconds between retries when an attempt to read a manifest or segment fails.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retryinterval
PrimitiveType: Integer
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

### Vaporshell.Resource.MediaLive.Channel.HlsInputSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html)

