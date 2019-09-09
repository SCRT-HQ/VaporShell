# Add-VSGreengrassSubscriptionDefinitionSubscriptionDefinitionVersion

## SYNOPSIS
Adds an AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion-description"\>\</a\> A subscription definition version contains a list of subscriptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html.

## SYNTAX

```
Add-VSGreengrassSubscriptionDefinitionSubscriptionDefinitionVersion [-Subscriptions] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion resource property to the template.
\<a name="aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion-description"\>\</a\> A subscription definition version contains a list of subscriptions: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscription.html.

**Note**

After you create a subscription definition version that contains the subscriptions you want to deploy, you must add it to your group version.
For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html.

\<a name="aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion-inheritance"\>\</a\> In an AWS CloudFormation template, SubscriptionDefinitionVersion is the property type of the InitialVersion property in the  AWS::Greengrass::SubscriptionDefinition : https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Subscriptions
The subscriptions in this version.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinition-subscriptiondefinitionversion-subscriptions
ItemType: Subscription
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Greengrass.SubscriptionDefinition.SubscriptionDefinitionVersion
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html)

