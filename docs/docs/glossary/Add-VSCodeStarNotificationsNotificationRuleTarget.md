# Add-VSCodeStarNotificationsNotificationRuleTarget

## SYNOPSIS
Adds an AWS::CodeStarNotifications::NotificationRule.Target resource property to the template.
Information about the SNS topics or AWS Chatbot clients associated with a notification rule.

## SYNTAX

```
Add-VSCodeStarNotificationsNotificationRuleTarget [[-TargetType] <Object>] [[-TargetAddress] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::CodeStarNotifications::NotificationRule.Target resource property to the template.
Information about the SNS topics or AWS Chatbot clients associated with a notification rule.

## PARAMETERS

### -TargetType
The target type.
Can be an Amazon SNS topic or AWS Chatbot client.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html#cfn-codestarnotifications-notificationrule-target-targettype
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

### -TargetAddress
The Amazon Resource Name ARN of the Amazon SNS topic or AWS Chatbot client.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html#cfn-codestarnotifications-notificationrule-target-targetaddress
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.CodeStarNotifications.NotificationRule.Target
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html)

