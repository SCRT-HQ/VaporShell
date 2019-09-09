# Add-UpdatePolicy

## SYNOPSIS
Adds an UpdatePolicy property to a resoure on the template

## SYNTAX

### AutoScalingRollingUpdateDetails (Default)
```
Add-UpdatePolicy [[-AutoScalingReplacingUpdate] <PSCustomObject>] [[-WillReplace] <Boolean>]
 [[-AutoScalingRollingUpdate] <PSCustomObject>] [[-MaxBatchSize] <Int32>] [[-MinInstancesInService] <Int32>]
 [[-MinSuccessfulInstancesPercent] <Int32>] [[-PauseTime] <String>] [[-SuspendProcesses] <String[]>]
 [[-WaitOnResourceSignals] <Boolean>] [[-AutoScalingScheduledAction] <PSCustomObject>]
 [[-IgnoreUnmodifiedGroupSizeProperties] <Boolean>] [<CommonParameters>]
```

### AutoScalingScheduledActionDetails
```
Add-UpdatePolicy [[-AutoScalingReplacingUpdate] <PSCustomObject>] [[-WillReplace] <Boolean>]
 [[-AutoScalingRollingUpdate] <PSCustomObject>] [[-MaxBatchSize] <Int32>] [[-MinInstancesInService] <Int32>]
 [[-MinSuccessfulInstancesPercent] <Int32>] [[-PauseTime] <String>] [[-SuspendProcesses] <String[]>]
 [[-WaitOnResourceSignals] <Boolean>] [[-AutoScalingScheduledAction] <PSCustomObject>]
 [[-IgnoreUnmodifiedGroupSizeProperties] <Boolean>] [<CommonParameters>]
```

### AutoScalingScheduledAction
```
Add-UpdatePolicy [[-AutoScalingReplacingUpdate] <PSCustomObject>] [[-WillReplace] <Boolean>]
 [[-AutoScalingRollingUpdate] <PSCustomObject>] [[-MaxBatchSize] <Int32>] [[-MinInstancesInService] <Int32>]
 [[-MinSuccessfulInstancesPercent] <Int32>] [[-PauseTime] <String>] [[-SuspendProcesses] <String[]>]
 [[-WaitOnResourceSignals] <Boolean>] [[-AutoScalingScheduledAction] <PSCustomObject>]
 [[-IgnoreUnmodifiedGroupSizeProperties] <Boolean>] [<CommonParameters>]
```

### AutoScalingRollingUpdate
```
Add-UpdatePolicy [[-AutoScalingReplacingUpdate] <PSCustomObject>] [[-WillReplace] <Boolean>]
 [[-AutoScalingRollingUpdate] <PSCustomObject>] [[-MaxBatchSize] <Int32>] [[-MinInstancesInService] <Int32>]
 [[-MinSuccessfulInstancesPercent] <Int32>] [[-PauseTime] <String>] [[-SuspendProcesses] <String[]>]
 [[-WaitOnResourceSignals] <Boolean>] [[-AutoScalingScheduledAction] <PSCustomObject>]
 [[-IgnoreUnmodifiedGroupSizeProperties] <Boolean>] [<CommonParameters>]
```

### AutoScalingReplacingUpdate
```
Add-UpdatePolicy [[-AutoScalingReplacingUpdate] <PSCustomObject>] [[-WillReplace] <Boolean>]
 [[-AutoScalingRollingUpdate] <PSCustomObject>] [[-MaxBatchSize] <Int32>] [[-MinInstancesInService] <Int32>]
 [[-MinSuccessfulInstancesPercent] <Int32>] [[-PauseTime] <String>] [[-SuspendProcesses] <String[]>]
 [[-WaitOnResourceSignals] <Boolean>] [[-AutoScalingScheduledAction] <PSCustomObject>]
 [[-IgnoreUnmodifiedGroupSizeProperties] <Boolean>] [<CommonParameters>]
```

### AutoScalingReplacingUpdateDetails
```
Add-UpdatePolicy [[-AutoScalingReplacingUpdate] <PSCustomObject>] [[-WillReplace] <Boolean>]
 [[-AutoScalingRollingUpdate] <PSCustomObject>] [[-MaxBatchSize] <Int32>] [[-MinInstancesInService] <Int32>]
 [[-MinSuccessfulInstancesPercent] <Int32>] [[-PauseTime] <String>] [[-SuspendProcesses] <String[]>]
 [[-WaitOnResourceSignals] <Boolean>] [[-AutoScalingScheduledAction] <PSCustomObject>]
 [[-IgnoreUnmodifiedGroupSizeProperties] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

* The AutoScalingReplacingUpdate and AutoScalingRollingUpdate policies apply only when you do one or more of the following:
    * Change the Auto Scaling group's AWS::AutoScaling::LaunchConfiguration.
    * Change the Auto Scaling group's VPCZoneIdentifier property
    * Update an Auto Scaling group that contains instances that don't match the current LaunchConfiguration.
* If both the AutoScalingReplacingUpdate and AutoScalingRollingUpdate policies are specified, setting the WillReplace property to true gives AutoScalingReplacingUpdate precedence.
* The AutoScalingScheduledAction policy applies when you update a stack that includes an Auto Scaling group with an associated scheduled action.

## EXAMPLES

### EXAMPLE 1
```
$templateInit = Initialize-Vaporshell -Description "Testing"
```

$templateInit.AddResource(
    (
        New-VaporResource -LogicalId "AutoScalingGroup" -Type "AWS::AutoScaling::AutoScalingGroup" -Properties (\[PSCustomObject\]\[Ordered\]@{
                "AvailabilityZones"       = (Add-FnGetAZs -Region "$_AWSRegion")
                "LaunchConfigurationName" = (Add-FnRef -Ref "LaunchConfig")
                "DesiredCapacity"         = "3"
                "MinSize"                 = "1"
                "MaxSize"                 = "4"
            }) -CreationPolicy (Add-CreationPolicy -Count 3 -Timeout "PT15M") -UpdatePolicy (Add-UpdatePolicy -IgnoreUnmodifiedGroupSizeProperties True -MinInstancesInService 1 -MaxBatchSize 2 -WaitOnResourceSignals True -PauseTime "PT10M")
    )
)

When the template is exported, this will convert to: 
\`\`\`json
{
"AWSTemplateFormatVersion": "2010-09-09",
"Description": "Testing",
"Resources": {
"AutoScalingGroup": {
    "Type": "AWS::AutoScaling::AutoScalingGroup",
    "Properties": {
        "AvailabilityZones": {
            "Fn::GetAZs": "AWS::Region"
        },
        "LaunchConfigurationName": {
            "Ref": "LaunchConfig"
        },
        "DesiredCapacity": "3",
        "MinSize": "1",
        "MaxSize": "4"
    },
    "CreationPolicy": {
        "ResourceSignal": {
            "Count": "3",
            "Timeout": "PT15M"
        }
    },
    "UpdatePolicy": {
        "AutoScalingScheduledAction": {
            "IgnoreUnmodifiedGroupSizeProperties": "true"
        },
        "AutoScalingRollingUpdate": {
            "MinInstancesInService": "1",
            "MaxBatchSize": "2",
            "WaitOnResourceSignals": "true",
            "PauseTime": "PT10M"
        }
    }
}
}
}
\`\`\`

## PARAMETERS

### -AutoScalingReplacingUpdate
To specify how AWS CloudFormation handles replacement updates for an Auto Scaling group, use the AutoScalingReplacingUpdate policy.
This policy enables you to specify whether AWS CloudFormation replaces an Auto Scaling group with a new one or replaces only the instances in the Auto Scaling group.

    **Important**
        Before attempting an update, ensure that you have sufficient Amazon EC2 capacity for both your old and new Auto Scaling groups.

Parameter accepts a PSCustomObject.
Use this if you are customizing the AutoScalingReplacingUpdate properties outside of WillReplace.

```yaml
Type: PSCustomObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WillReplace
Specifies whether an Auto Scaling group and the instances it contains are replaced during an update.
During replacement, AWS CloudFormation retains the old group until it finishes creating the new one.
If the update fails, AWS CloudFormation can roll back to the old Auto Scaling group and delete the new Auto Scaling group.

While AWS CloudFormation creates the new group, it doesn't detach or attach any instances.
After successfully creating the new Auto Scaling group, AWS CloudFormation deletes the old Auto Scaling group during the cleanup process.

When you set the WillReplace parameter, remember to specify a matching CreationPolicy.
If the minimum number of instances (specified by the WillReplace property) don't signal success within the Timeout period (specified in the CreationPolicy policy), the replacement update fails and AWS CloudFormation rolls back to the old Auto Scaling group.

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

### -AutoScalingRollingUpdate
To specify how AWS CloudFormation handles rolling updates for an Auto Scaling group, use the AutoScalingRollingUpdate policy.
Rolling updates enable you to specify whether AWS CloudFormation updates instances that are in an Auto Scaling group in batches or all at once.

    **Important**
        During a rolling update, some Auto Scaling processes might make changes to the Auto Scaling group before AWS CloudFormation completes the rolling update.
These changes might cause the rolling update to fail.
To prevent Auto Scaling from running processes during a rolling update, use the SuspendProcesses property.

Parameter accepts a PSCustomObject.
Use this if you are customizing the AutoScalingRollingUpdate properties outside of MaxBatchSize, MinInstancesInService, WillReplace, PauseTime, SuspendProcesses, and/or WaitOnAutoScalingRollingUpdates.

```yaml
Type: PSCustomObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxBatchSize
Specifies the maximum number of instances that AWS CloudFormation updates.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinInstancesInService
Specifies the minimum number of instances that must be in service within the Auto Scaling group while AWS CloudFormation updates old instances.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinSuccessfulInstancesPercent
{{ Fill MinSuccessfulInstancesPercent Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PauseTime
The amount of time that AWS CloudFormation pauses after making a change to a batch of instances to give those instances time to start software applications.
For example, you might need to specify PauseTime when scaling up the number of instances in an Auto Scaling group.

If you enable the WaitOnAutoScalingRollingUpdates property, PauseTime is the amount of time that AWS CloudFormation should wait for the Auto Scaling group to receive the required number of valid signals from added or replaced instances.
If the PauseTime is exceeded before the Auto Scaling group receives the required number of signals, the update fails.
For best results, specify a time period that gives your applications sufficient time to get started.
If the update needs to be rolled back, a short PauseTime can cause the rollback to fail.

Specify PauseTime in the ISO8601 duration format (in the format PT#H#M#S, where each # is the number of hours, minutes, and seconds, respectively).
The maximum PauseTime is one hour (PT1H).

Default: PT0S (zero seconds).
If the WaitOnAutoScalingRollingUpdates property is set to true, the default is PT5M.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SuspendProcesses
Specifies the Auto Scaling processes to suspend during a stack update.
Suspending processes prevents Auto Scaling from interfering with a stack update.
For example, you can suspend alarming so that Auto Scaling doesn't execute scaling policies associated with an alarm.
For valid values, see the \`ScalingProcesses.member.N parameter\` for the SuspendProcesses action in the Auto Scaling API Reference.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WaitOnResourceSignals
{{ Fill WaitOnResourceSignals Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -AutoScalingScheduledAction
To specify how AWS CloudFormation handles updates for the MinSize, MaxSize, and DesiredCapacity properties when the AWS::AutoScaling::AutoScalingGroup resource has an associated scheduled action, use the AutoScalingScheduledAction policy.

With scheduled actions, the group size properties of an Auto Scaling group can change at any time.
When you update a stack with an Auto Scaling group and scheduled action, AWS CloudFormation always sets the group size property values of your Auto Scaling group to the values that are defined in the AWS::AutoScaling::AutoScalingGroup resource of your template, even if a scheduled action is in effect.

If you do not want AWS CloudFormation to change any of the group size property values when you have a scheduled action in effect, use the AutoScalingScheduledAction update policy to prevent AWS CloudFormation from changing the MinSize, MaxSize, or DesiredCapacity properties unless you have modified these values in your template.

Parameter accepts a PSCustomObject.
Use this if you are customizing the AutoScalingScheduledAction properties outside of IgnoreUnmodifiedGroupSizeProperties.

```yaml
Type: PSCustomObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreUnmodifiedGroupSizeProperties
Specifies whether AWS CloudFormation ignores differences in group size properties between your current Auto Scaling group and the Auto Scaling group described in the AWS::AutoScaling::AutoScalingGroup resource of your template during a stack update.
If you modify any of the group size property values in your template, AWS CloudFormation uses the modified values and updates your Auto Scaling group.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.UpdatePolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html)

