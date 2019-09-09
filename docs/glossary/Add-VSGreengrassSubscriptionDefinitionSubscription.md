# Add-VSGreengrassSubscriptionDefinitionSubscription

## SYNOPSIS
Adds an AWS::Greengrass::SubscriptionDefinition.Subscription resource property to the template.
\<a name="aws-properties-greengrass-subscriptiondefinition-subscription-description"\>\</a\>Subscriptions define how MQTT messages can be exchanged between devices, functions, and connectors in the group, and with AWS IoT or the local shadow service.
A subscription defines a message source, message target, and a topic (or subject that's used to route messages from the source to the target.
A subscription defines the message flow in one direction, from the source to the target.
For two-way communication, you must set up two subscriptions, one for each direction.

## SYNTAX

```
Add-VSGreengrassSubscriptionDefinitionSubscription [-Target] <Object> [-Id] <Object> [-Source] <Object>
 [-Subject] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::SubscriptionDefinition.Subscription resource property to the template.
\<a name="aws-properties-greengrass-subscriptiondefinition-subscription-description"\>\</a\>Subscriptions define how MQTT messages can be exchanged between devices, functions, and connectors in the group, and with AWS IoT or the local shadow service.
A subscription defines a message source, message target, and a topic (or subject that's used to route messages from the source to the target.
A subscription defines the message flow in one direction, from the source to the target.
For two-way communication, you must set up two subscriptions, one for each direction.

\<a name="aws-properties-greengrass-subscriptiondefinition-subscription-inheritance"\>\</a\> In an AWS CloudFormation template, the Subscriptions property of the  SubscriptionDefinitionVersion : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html property type contains a list of Subscription property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Target
The destination of the message.
The value can be a thing ARN, a Lambda function ARN, a connector ARN, cloud which represents the AWS IoT cloud, or GGShadowService.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-target
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

### -Id
A descriptive or arbitrary ID for the subscription.
This value must be unique within the subscription definition version.
Maximum length is 128 characters with pattern a-zA-Z0-9:_-\]+.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-id
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

### -Source
The originator of the message.
The value can be a thing ARN, a Lambda function ARN, a connector ARN, cloud which represents the AWS IoT cloud, or GGShadowService.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-source
PrimitiveType: String
UpdateType: Immutable

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

### -Subject
The MQTT topic used to route the message.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html#cfn-greengrass-subscriptiondefinition-subscription-subject
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.SubscriptionDefinition.Subscription
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html)

