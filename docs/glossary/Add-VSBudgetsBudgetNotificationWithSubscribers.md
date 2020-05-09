# Add-VSBudgetsBudgetNotificationWithSubscribers

## SYNOPSIS
Adds an AWS::Budgets::Budget.NotificationWithSubscribers resource property to the template.
A notification with subscribers.
A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.

## SYNTAX

```
Add-VSBudgetsBudgetNotificationWithSubscribers [-Subscribers] <Object> [-Notification] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.NotificationWithSubscribers resource property to the template.
A notification with subscribers.
A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.

## PARAMETERS

### -Subscribers
A list of subscribers who are subscribed to this notification.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-subscribers
ItemType: Subscriber
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

### -Notification
The notification that is associated with a budget.

Type: Notification
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html#cfn-budgets-budget-notificationwithsubscribers-notification
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

### Vaporshell.Resource.Budgets.Budget.NotificationWithSubscribers
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-notificationwithsubscribers.html)

