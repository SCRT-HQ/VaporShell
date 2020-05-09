# Add-VSSSMMaintenanceWindowTaskNotificationConfig

## SYNOPSIS
Adds an AWS::SSM::MaintenanceWindowTask.NotificationConfig resource property to the template.
The NotificationConfig property type specifies configurations for sending notifications for a maintenance window task in AWS Systems Manager.

## SYNTAX

```
Add-VSSSMMaintenanceWindowTaskNotificationConfig [-NotificationArn] <Object> [[-NotificationType] <Object>]
 [[-NotificationEvents] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::MaintenanceWindowTask.NotificationConfig resource property to the template.
The NotificationConfig property type specifies configurations for sending notifications for a maintenance window task in AWS Systems Manager.

NotificationConfig is a property of the MaintenanceWindowRunCommandParameters: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html property type.

## PARAMETERS

### -NotificationArn
An Amazon Resource Name ARN for an Amazon Simple Notification Service Amazon SNS topic.
Run Command pushes notifications about command status changes to this topic.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationarn
PrimitiveType: String
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

### -NotificationType
The notification type.
+  Command: Receive notification when the status of a command changes.
+  Invocation: For commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationtype
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

### -NotificationEvents
The different events that you can receive notifications for.
These events include the following: All events, InProgress, Success, TimedOut, Cancelled, Failed.
To learn more about these events, see Configuring Amazon SNS Notifications for AWS Systems Manager: https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html in the *AWS Systems Manager User Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationevents
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

### Vaporshell.Resource.SSM.MaintenanceWindowTask.NotificationConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html)

