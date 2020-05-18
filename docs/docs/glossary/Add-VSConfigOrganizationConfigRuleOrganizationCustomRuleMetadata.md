# Add-VSConfigOrganizationConfigRuleOrganizationCustomRuleMetadata

## SYNOPSIS
Adds an AWS::Config::OrganizationConfigRule.OrganizationCustomRuleMetadata resource property to the template.
An object that specifies organization custom rule metadata such as resource type, resource ID of AWS resource, Lamdba function ARN, and organization trigger types that trigger AWS Config to evaluate your AWS resources against a rule.
It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.

## SYNTAX

```
Add-VSConfigOrganizationConfigRuleOrganizationCustomRuleMetadata [[-TagKeyScope] <Object>]
 [[-TagValueScope] <Object>] [[-Description] <Object>] [[-ResourceIdScope] <Object>]
 [-LambdaFunctionArn] <Object> [-OrganizationConfigRuleTriggerTypes] <Object> [[-ResourceTypesScope] <Object>]
 [[-MaximumExecutionFrequency] <Object>] [[-InputParameters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::OrganizationConfigRule.OrganizationCustomRuleMetadata resource property to the template.
An object that specifies organization custom rule metadata such as resource type, resource ID of AWS resource, Lamdba function ARN, and organization trigger types that trigger AWS Config to evaluate your AWS resources against a rule.
It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.

## PARAMETERS

### -TagKeyScope
One part of a key-value pair that make up a tag.
A key is a general label that acts like a category for more specific tag values.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-tagkeyscope
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

### -TagValueScope
The optional part of a key-value pair that make up a tag.
A value acts as a descriptor within a tag category key.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-tagvaluescope
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

### -Description
The description that you provide for organization config rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-description
PrimitiveType: String
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

### -ResourceIdScope
The ID of the AWS resource that was evaluated.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-resourceidscope
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LambdaFunctionArn
The lambda function ARN.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-lambdafunctionarn
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OrganizationConfigRuleTriggerTypes
The type of notification that triggers AWS Config to run an evaluation for a rule.
You can specify the following notification types:
+  ConfigurationItemChangeNotification - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.
+  OversizedConfigurationItemChangeNotification - Triggers an evaluation when AWS Config delivers an oversized configuration item.
AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.
+  ScheduledNotification - Triggers a periodic evaluation at the frequency specified for MaximumExecutionFrequency.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-organizationconfigruletriggertypes
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceTypesScope
The type of the AWS resource that was evaluated.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-resourcetypesscope
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

### -MaximumExecutionFrequency
The maximum frequency with which AWS Config runs evaluations for a rule.
Your custom rule is triggered when AWS Config delivers the configuration snapshot.
For more information, see ConfigSnapshotDeliveryProperties: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-deliverychannel.html#cfn-config-deliverychannel-configsnapshotdeliveryproperties.
By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the MaximumExecutionFrequency parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-maximumexecutionfrequency
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputParameters
A string, in JSON format, that is passed to organization config rule Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-inputparameters
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.OrganizationConfigRule.OrganizationCustomRuleMetadata
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html)

