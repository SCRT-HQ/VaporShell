# Add-VSAutoScalingAutoScalingGroupLifecycleHookSpecification

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup.LifecycleHookSpecification resource property to the template.
LifecycleHookSpecification specifies a list of lifecycle hooks for the LifecycleHookSpecificationList property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html.
LifecycleHookSpecification defines lifecycle hooks for an Auto Scaling group that specify actions to perform when Amazon EC2 Auto Scaling launches or terminates instances.

## SYNTAX

```
Add-VSAutoScalingAutoScalingGroupLifecycleHookSpecification [[-DefaultResult] <Object>]
 [[-HeartbeatTimeout] <Int32>] [-LifecycleHookName] <Object> [-LifecycleTransition] <Object>
 [[-NotificationMetadata] <Object>] [[-NotificationTargetARN] <Object>] [[-RoleARN] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup.LifecycleHookSpecification resource property to the template.
LifecycleHookSpecification specifies a list of lifecycle hooks for the LifecycleHookSpecificationList property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html.
LifecycleHookSpecification defines lifecycle hooks for an Auto Scaling group that specify actions to perform when Amazon EC2 Auto Scaling launches or terminates instances.

For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html in the *Amazon EC2 Auto Scaling User Guide*.
You can find a sample template snippet in the Examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#aws-resource-as-lifecyclehook--examples section of the AWS::AutoScaling::LifecycleHook documentation.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DefaultResult
The action the Auto Scaling group takes when the lifecycle hook timeout elapses or if an unexpected failure occurs.
The valid values are CONTINUE and ABANDON default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-defaultresult
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

### -HeartbeatTimeout
The maximum time, in seconds, that can elapse before the lifecycle hook times out.
If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the default action.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-heartbeattimeout
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -LifecycleHookName
The name of the lifecycle hook.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-lifecyclehookname
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

### -LifecycleTransition
The state of the EC2 instance to attach the lifecycle hook to.
The valid values are:
+ autoscaling:EC2_INSTANCE_LAUNCHING
+ autoscaling:EC2_INSTANCE_TERMINATING

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-lifecycletransition
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotificationMetadata
Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to the notification target.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-notificationmetadata
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotificationTargetARN
The Amazon Resource Name ARN of the notification target that Amazon EC2 Auto Scaling uses to notify you when an instance is in the transition state for the lifecycle hook.
You can specify an Amazon SQS queue or an Amazon SNS topic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-notificationtargetarn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RoleARN
The ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target, for example, an Amazon SNS topic or an Amazon SQS queue.
For information about creating this role, see Preparing for Notifications: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html#preparing-for-notification in the *Amazon EC2 Auto Scaling User Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-rolearn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.AutoScalingGroup.LifecycleHookSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html)

