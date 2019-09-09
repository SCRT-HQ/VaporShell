# Add-VSConfigConfigRuleSourceDetail

## SYNOPSIS
Adds an AWS::Config::ConfigRule.SourceDetail resource property to the template.
Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule.
It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.
You can specify the parameter values for SourceDetail only for custom rules.

## SYNTAX

```
Add-VSConfigConfigRuleSourceDetail [-EventSource] <Object> [[-MaximumExecutionFrequency] <Object>]
 [-MessageType] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::ConfigRule.SourceDetail resource property to the template.
Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule.
It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.
You can specify the parameter values for SourceDetail only for custom rules.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -EventSource
The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-eventsource
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

### -MaximumExecutionFrequency
The frequency at which you want AWS Config to run evaluations for a custom rule with a periodic trigger.
If you specify a value for MaximumExecutionFrequency, then MessageType must use the ScheduledNotification value.
By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the MaximumExecutionFrequency parameter.
Based on the valid value you choose, AWS Config runs evaluations once for each valid value.
For example, if you choose Three_Hours, AWS Config runs evaluations once every three hours.
In this case, Three_Hours is the frequency of this rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-sourcedetail-maximumexecutionfrequency
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

### -MessageType
The type of notification that triggers AWS Config to run an evaluation for a rule.
You can specify the following notification types:
+  ConfigurationItemChangeNotification - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.
+  OversizedConfigurationItemChangeNotification - Triggers an evaluation when AWS Config delivers an oversized configuration item.
AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
+  ScheduledNotification - Triggers a periodic evaluation at the frequency specified for MaximumExecutionFrequency.
+  ConfigurationSnapshotDeliveryCompleted - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.
If you want your custom rule to be triggered by configuration changes, specify two SourceDetail objects, one for ConfigurationItemChangeNotification and one for OversizedConfigurationItemChangeNotification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-messagetype
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.ConfigRule.SourceDetail
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html)

