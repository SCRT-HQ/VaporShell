# Add-VSApplicationAutoScalingScalableTargetSuspendedState

## SYNOPSIS
Adds an AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState resource property to the template.
Specifies whether the scaling activities for a scalable target are in a suspended state.

## SYNTAX

```
Add-VSApplicationAutoScalingScalableTargetSuspendedState [[-DynamicScalingInSuspended] <Boolean>]
 [[-DynamicScalingOutSuspended] <Boolean>] [[-ScheduledScalingSuspended] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState resource property to the template.
Specifies whether the scaling activities for a scalable target are in a suspended state.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DynamicScalingInSuspended
Whether scale in by a target tracking scaling policy or a step scaling policy is suspended.
Set the value to true if you don't want Application Auto Scaling to remove capacity when a scaling policy is triggered.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalinginsuspended
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -DynamicScalingOutSuspended
Whether scale out by a target tracking scaling policy or a step scaling policy is suspended.
Set the value to true if you don't want Application Auto Scaling to add capacity when a scaling policy is triggered.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalingoutsuspended
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScheduledScalingSuspended
Whether scheduled scaling is suspended.
Set the value to true if you don't want Application Auto Scaling to add or remove capacity by initiating scheduled actions.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-scheduledscalingsuspended
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ApplicationAutoScaling.ScalableTarget.SuspendedState
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html)

