# Add-VSAutoScalingAutoScalingGroupNotificationConfiguration

## SYNOPSIS
Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration resource property to the template.
NotificationConfiguration specifies a list of notification configurations for the NotificationConfigurations property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html.
NotificationConfiguration specifies the events that the Amazon EC2 Auto Scaling group sends notifications for.

## SYNTAX

```
Add-VSAutoScalingAutoScalingGroupNotificationConfiguration [[-NotificationTypes] <Object>] [-TopicARN] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration resource property to the template.
NotificationConfiguration specifies a list of notification configurations for the NotificationConfigurations property of AutoScalingGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html.
NotificationConfiguration specifies the events that the Amazon EC2 Auto Scaling group sends notifications for.

For example snippets, see Auto Scaling Group with Notifications: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html#scenario-as-notification.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -NotificationTypes
A list of event types that trigger a notification.
Event types can include any of the following types:
+ autoscaling:EC2_INSTANCE_LAUNCH
+ autoscaling:EC2_INSTANCE_LAUNCH_ERROR
+ autoscaling:EC2_INSTANCE_TERMINATE
+ autoscaling:EC2_INSTANCE_TERMINATE_ERROR
+ autoscaling:TEST_NOTIFICATION

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
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

### -TopicARN
The Amazon Resource Name ARN of the Amazon Simple Notification Service Amazon SNS topic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AutoScaling.AutoScalingGroup.NotificationConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html)

