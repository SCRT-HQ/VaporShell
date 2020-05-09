# Add-VSGameLiftFleetServerProcess

## SYNOPSIS
Adds an AWS::GameLift::Fleet.ServerProcess resource property to the template.
A set of instructions for launching server processes on each instance in a fleet.
Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance.
Server process configurations make up a fleet's RuntimeConfiguration.

## SYNTAX

```
Add-VSGameLiftFleetServerProcess [-ConcurrentExecutions] <Object> [-LaunchPath] <Object>
 [[-Parameters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Fleet.ServerProcess resource property to the template.
A set of instructions for launching server processes on each instance in a fleet.
Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance.
Server process configurations make up a fleet's RuntimeConfiguration.

## PARAMETERS

### -ConcurrentExecutions
The number of server processes that use this configuration to run concurrently on an instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-concurrentexecutions
PrimitiveType: Integer
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

### -LaunchPath
The location of the server executable in a custom game build or the name of the Realtime script file that contains the Init function.
Game builds and Realtime scripts are installed on instances at the root:
+ Windows for custom game builds only: C:game.
Example: "C:gameMyGameserver.exe"
+ Linux: /local/game.
Examples: "/local/game/MyGame/server.exe" or "/local/game/MyRealtimeScript.js"

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-launchpath
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

### -Parameters
An optional list of parameters to pass to the server executable or Realtime script on launch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html#cfn-gamelift-fleet-serverprocess-parameters
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

### Vaporshell.Resource.GameLift.Fleet.ServerProcess
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-serverprocess.html)

