# Add-VSMediaLiveChannelDvbSubSourceSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.DvbSubSourceSettings resource property to the template.
Information about the DVB Sub captions to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelDvbSubSourceSettings [[-Pid] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.DvbSubSourceSettings resource property to the template.
Information about the DVB Sub captions to extract from the input.

The parent of this entity is CaptionSelectorSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Pid
When using DVB-Sub with burn-in or SMPTE-TT, use this PID for the source content.
It is unused for DVB-Sub passthrough.
All DVB-Sub content is passed through, regardless of selectors.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html#cfn-medialive-channel-dvbsubsourcesettings-pid
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

### Vaporshell.Resource.MediaLive.Channel.DvbSubSourceSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html)

