# Add-VSMediaLiveChannelTeletextSourceSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.TeletextSourceSettings resource property to the template.
Information about the Teletext captions to extract from the input.

## SYNTAX

```
Add-VSMediaLiveChannelTeletextSourceSettings [[-PageNumber] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.TeletextSourceSettings resource property to the template.
Information about the Teletext captions to extract from the input.

The parent of this entity is CaptionSelectorSettings.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -PageNumber
Specifies the Teletext page number within the data stream from which to extract captions.
The range is 0x100 256 to 0x8FF 2303.
This is unused for passthrough.
It should be specified as a hexadecimal string with no "0x" prefix.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html#cfn-medialive-channel-teletextsourcesettings-pagenumber
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.MediaLive.Channel.TeletextSourceSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html)

