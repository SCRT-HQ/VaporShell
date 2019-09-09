# Add-VSBudgetsBudgetSubscriber

## SYNOPSIS
Adds an AWS::Budgets::Budget.Subscriber resource property to the template.
The Subscriber property type specifies who to notify for a Billing and Cost Management budget notification.
The subscriber consists of a subscription type, and either an Amazon SNS topic or an email address.

## SYNTAX

```
Add-VSBudgetsBudgetSubscriber [-SubscriptionType] <Object> [-Address] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Budgets::Budget.Subscriber resource property to the template.
The Subscriber property type specifies who to notify for a Billing and Cost Management budget notification.
The subscriber consists of a subscription type, and either an Amazon SNS topic or an email address.

For example, an email subscriber would have the following parameters:

+ A subscriptionType of EMAIL

+ An address of example@example.com

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -SubscriptionType
The type of notification that AWS sends to a subscriber.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-subscriptiontype
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

### -Address
The address that AWS sends budget notifications to, either an SNS topic or an email.
When you create a subscriber, the value of Address can't contain line breaks.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-address
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

### Vaporshell.Resource.Budgets.Budget.Subscriber
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html)

