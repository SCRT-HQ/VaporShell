# Add-VSGameLiftAliasRoutingStrategy

## SYNOPSIS
Adds an AWS::GameLift::Alias.RoutingStrategy resource property to the template.
The routing configuration for a fleet alias.

## SYNTAX

```
Add-VSGameLiftAliasRoutingStrategy [[-FleetId] <Object>] [[-Message] <Object>] [-Type] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::Alias.RoutingStrategy resource property to the template.
The routing configuration for a fleet alias.

## PARAMETERS

### -FleetId
A unique identifier for a fleet that the alias points to.
If you specify SIMPLE for the Type property, you must specify this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-fleetid
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

### -Message
The message text to be used with a terminal routing strategy.
If you specify TERMINAL for the Type property, you must specify this property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-message
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

### -Type
A type of routing strategy.
Possible routing types include the following:
+  **SIMPLE** - The alias resolves to one specific fleet.
Use this type when routing to active fleets.
+  **TERMINAL** - The alias does not resolve to a fleet but instead can be used to display a message to the user.
A terminal alias throws a TerminalRoutingStrategyException with the message that you specified in the Message property.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GameLift.Alias.RoutingStrategy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html)

