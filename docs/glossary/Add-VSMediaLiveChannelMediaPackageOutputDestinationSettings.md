# Add-VSMediaLiveChannelMediaPackageOutputDestinationSettings

## SYNOPSIS
Adds an AWS::MediaLive::Channel.MediaPackageOutputDestinationSettings resource property to the template.
Destination settings for a MediaPackage output.

## SYNTAX

```
Add-VSMediaLiveChannelMediaPackageOutputDestinationSettings [[-ChannelId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.MediaPackageOutputDestinationSettings resource property to the template.
Destination settings for a MediaPackage output.

The parent of this entity is OutputDestination.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ChannelId
The ID of the channel in MediaPackage that is the destination for this output group.
You don't need to specify the individual inputs in MediaPackage; MediaLive handles the connection of the two MediaLive pipelines to the two MediaPackage inputs.
The MediaPackage channel and MediaLive channel must be in the same Region.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html#cfn-medialive-channel-mediapackageoutputdestinationsettings-channelid
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

### Vaporshell.Resource.MediaLive.Channel.MediaPackageOutputDestinationSettings
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html)

