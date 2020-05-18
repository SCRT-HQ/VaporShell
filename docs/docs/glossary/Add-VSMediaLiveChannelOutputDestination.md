# Add-VSMediaLiveChannelOutputDestination

## SYNOPSIS
Adds an AWS::MediaLive::Channel.OutputDestination resource property to the template.
Configuration information for an output.

## SYNTAX

```
Add-VSMediaLiveChannelOutputDestination [[-MultiplexSettings] <Object>] [[-Id] <Object>] [[-Settings] <Object>]
 [[-MediaPackageSettings] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::MediaLive::Channel.OutputDestination resource property to the template.
Configuration information for an output.

This entity is at the top level in the channel.

## PARAMETERS

### -MultiplexSettings
Not currently supported by AWS CloudFormation.

Type: MultiplexProgramChannelDestinationSettings
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-multiplexsettings
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

### -Id
The ID for this destination.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-id
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

### -Settings
The destination settings for an output.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-settings
ItemType: OutputDestinationSettings
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

### -MediaPackageSettings
The destination settings for a MediaPackage output.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-mediapackagesettings
ItemType: MediaPackageOutputDestinationSettings
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

### Vaporshell.Resource.MediaLive.Channel.OutputDestination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html)

