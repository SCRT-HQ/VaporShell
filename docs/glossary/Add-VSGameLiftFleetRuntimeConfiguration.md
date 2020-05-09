# Add-VSGameLiftFleetRuntimeConfiguration

## SYNOPSIS
Adds an AWS::GameLift::Fleet.RuntimeConfiguration resource property to the template.
A collection of server process configurations that describe the processes to run on each instance in a fleet.
All fleets must have a runtime configuration.
Each instance in the fleet maintains server processes as specified in the runtime configuration, launching new ones as existing processes end.
Each instance regularly checks for an updated runtime configuration makes adjustments as called for.

## SYNTAX

```
Add-VSGameLiftFleetRuntimeConfiguration [[-GameSessionActivationTimeoutSeconds] <Object>]
 [[-MaxConcurrentGameSessionActivations] <Object>] [[-ServerProcesses] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Fleet.RuntimeConfiguration resource property to the template.
A collection of server process configurations that describe the processes to run on each instance in a fleet.
All fleets must have a runtime configuration.
Each instance in the fleet maintains server processes as specified in the runtime configuration, launching new ones as existing processes end.
Each instance regularly checks for an updated runtime configuration makes adjustments as called for.

The runtime configuration enables the instances in a fleet to run multiple processes simultaneously.
Potential scenarios are as follows: (1 Run multiple processes of a single game server executable to maximize usage of your hosting resources.
(2 Run one or more processes of different executables, such as your game server and a metrics tracking program.
(3 Run multiple processes of a single game server but with different launch parameters, for example to run one process on each instance in debug mode.

An Amazon GameLift instance is limited to 50 processes running simultaneously.
A runtime configuration must specify fewer than this limit.
To calculate the total number of processes specified in a runtime configuration, add the values of the ConcurrentExecutions parameter for each ServerProcess object in the runtime configuration.

## PARAMETERS

### -GameSessionActivationTimeoutSeconds
The maximum amount of time in seconds that a game session can remain in status ACTIVATING.
If the game session is not active before the timeout, activation is terminated and the game session status is changed to TERMINATED.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-gamesessionactivationtimeoutseconds
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

### -MaxConcurrentGameSessionActivations
The maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously.
This setting limits the amount of instance resources that can be used for new game activations at any one time.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-maxconcurrentgamesessionactivations
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

### -ServerProcesses
A collection of server process configurations that describe which server processes to run on each instance in a fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-serverprocesses
DuplicatesAllowed: False
ItemType: ServerProcess
Type: List
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

### Vaporshell.Resource.GameLift.Fleet.RuntimeConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html)

