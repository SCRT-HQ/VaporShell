# Add-VSGameLiftGameSessionQueueDestination

## SYNOPSIS
Adds an AWS::GameLift::GameSessionQueue.Destination resource property to the template.
The fleet designated in a game session queue.
Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination that is configured for a queue.

## SYNTAX

```
Add-VSGameLiftGameSessionQueueDestination [[-DestinationArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::GameSessionQueue.Destination resource property to the template.
The fleet designated in a game session queue.
Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination that is configured for a queue.

## PARAMETERS

### -DestinationArn
The Amazon Resource Name ARN that is assigned to fleet or fleet alias.
ARNs, which include a fleet ID or alias ID and a Region name, provide a unique identifier across all Regions.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html#cfn-gamelift-gamesessionqueue-destination-destinationarn
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

### Vaporshell.Resource.GameLift.GameSessionQueue.Destination
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gamesessionqueue-destination.html)

