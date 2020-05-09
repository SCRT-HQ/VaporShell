# Add-VSGameLiftFleetResourceCreationLimitPolicy

## SYNOPSIS
Adds an AWS::GameLift::Fleet.ResourceCreationLimitPolicy resource property to the template.
A policy that limits the number of game sessions a player can create on the same fleet.
This optional policy gives game owners control over how players can consume available game server resources.
A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".

## SYNTAX

```
Add-VSGameLiftFleetResourceCreationLimitPolicy [[-NewGameSessionsPerCreator] <Object>]
 [[-PolicyPeriodInMinutes] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Fleet.ResourceCreationLimitPolicy resource property to the template.
A policy that limits the number of game sessions a player can create on the same fleet.
This optional policy gives game owners control over how players can consume available game server resources.
A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".

The policy is evaluated when a player tries to create a new game session.
For example, assume you have a policy of 10 new game sessions and a time period of 60 minutes.
On receiving a CreateGameSession request, Amazon GameLift checks that the player (identified by CreatorId has created fewer than 10 game sessions in the past 60 minutes.

## PARAMETERS

### -NewGameSessionsPerCreator
The maximum number of game sessions that an individual can create during the policy period.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-newgamesessionspercreator
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

### -PolicyPeriodInMinutes
The time span used in evaluating the resource creation limit policy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-policyperiodinminutes
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

### Vaporshell.Resource.GameLift.Fleet.ResourceCreationLimitPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html)

