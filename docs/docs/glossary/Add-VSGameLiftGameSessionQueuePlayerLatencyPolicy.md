# Add-VSGameLiftGameSessionQueuePlayerLatencyPolicy

## SYNOPSIS
Adds an AWS::GameLift::GameSessionQueue.PlayerLatencyPolicy resource property to the template.
The queue setting that determines the highest latency allowed for individual players when placing a game session.
When a latency policy is in force, a game session cannot be placed with any fleet in a Region where a player reports latency higher than the cap.
Latency policies are only enforced when the placement request contains player latency information.

## SYNTAX

```
Add-VSGameLiftGameSessionQueuePlayerLatencyPolicy [[-PolicyDurationSeconds] <Object>]
 [[-MaximumIndividualPlayerLatencyMilliseconds] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::GameSessionQueue.PlayerLatencyPolicy resource property to the template.
The queue setting that determines the highest latency allowed for individual players when placing a game session.
When a latency policy is in force, a game session cannot be placed with any fleet in a Region where a player reports latency higher than the cap.
Latency policies are only enforced when the placement request contains player latency information.

## PARAMETERS

### -PolicyDurationSeconds
The length of time, in seconds, that the policy is enforced while placing a new game session.
A null value for this property means that the policy is enforced until the queue times out.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-policydurationseconds
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

### -MaximumIndividualPlayerLatencyMilliseconds
The maximum latency value that is allowed for any player, in milliseconds.
All policies must have a value set for this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html#cfn-gamelift-gamesessionqueue-playerlatencypolicy-maximumindividualplayerlatencymilliseconds
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GameLift.GameSessionQueue.PlayerLatencyPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-playerlatencypolicy.html)

