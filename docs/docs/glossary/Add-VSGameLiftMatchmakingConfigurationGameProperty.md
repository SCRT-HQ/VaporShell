# Add-VSGameLiftMatchmakingConfigurationGameProperty

## SYNOPSIS
Adds an AWS::GameLift::MatchmakingConfiguration.GameProperty resource property to the template.
A set of key-value pairs that contain information about a game session.
When included in a game session request, these properties communicate details to be used when setting up the new game session.
For example, a property might specify a game mode, level, or map.
Game properties are passed to the game server process when initiating a new game session.

## SYNTAX

```
Add-VSGameLiftMatchmakingConfigurationGameProperty [-Value] <Object> [-Key] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::MatchmakingConfiguration.GameProperty resource property to the template.
A set of key-value pairs that contain information about a game session.
When included in a game session request, these properties communicate details to be used when setting up the new game session.
For example, a property might specify a game mode, level, or map.
Game properties are passed to the game server process when initiating a new game session.

## PARAMETERS

### -Value
The game property value.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-value
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Key
The game property identifier.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html#cfn-gamelift-matchmakingconfiguration-gameproperty-key
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GameLift.MatchmakingConfiguration.GameProperty
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-matchmakingconfiguration-gameproperty.html)

