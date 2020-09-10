# Add-VSGameLiftGameServerGroupAutoScalingPolicy

## SYNOPSIS
Adds an AWS::GameLift::GameServerGroup.AutoScalingPolicy resource property to the template.

## SYNTAX

```
Add-VSGameLiftGameServerGroupAutoScalingPolicy [[-EstimatedInstanceWarmup] <Object>]
 [-TargetTrackingConfiguration] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GameLift::GameServerGroup.AutoScalingPolicy resource property to the template.

## PARAMETERS

### -EstimatedInstanceWarmup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html#cfn-gamelift-gameservergroup-autoscalingpolicy-estimatedinstancewarmup
UpdateType: Mutable
PrimitiveType: Double

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

### -TargetTrackingConfiguration
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html#cfn-gamelift-gameservergroup-autoscalingpolicy-targettrackingconfiguration
UpdateType: Mutable
Type: TargetTrackingConfiguration

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

### Vaporshell.Resource.GameLift.GameServerGroup.AutoScalingPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html)

