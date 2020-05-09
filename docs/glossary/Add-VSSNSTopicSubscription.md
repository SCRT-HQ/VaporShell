# Add-VSSNSTopicSubscription

## SYNOPSIS
Adds an AWS::SNS::Topic.Subscription resource property to the template.
Subscription is an embedded property that describes the subscription endpoints of an Amazon SNS topic.

## SYNTAX

```
Add-VSSNSTopicSubscription [-Endpoint] <Object> [-Protocol] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SNS::Topic.Subscription resource property to the template.
Subscription is an embedded property that describes the subscription endpoints of an Amazon SNS topic.

**Note**

For full control over subscription behavior (for example, delivery policy, filtering, raw message delivery, and cross-region subscriptions, use the AWS::SNS::Subscription: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html resource.

## PARAMETERS

### -Endpoint
The endpoint that receives notifications from the Amazon SNS topic.
The endpoint value depends on the protocol that you specify.
For more information, see the Endpoint parameter of the  Subscribe: https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html  action in the *Amazon Simple Notification Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-endpoint
PrimitiveType: String
UpdateType: Immutable

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

### -Protocol
The subscription's protocol.
For more information, see the Protocol parameter of the  Subscribe: https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html  action in the *Amazon Simple Notification Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-protocol
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.SNS.Topic.Subscription
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html)

