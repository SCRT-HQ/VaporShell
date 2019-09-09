# Add-VSConfigOrganizationConfigRuleOrganizationManagedRuleMetadata

## SYNOPSIS
Adds an AWS::Config::OrganizationConfigRule.OrganizationManagedRuleMetadata resource property to the template.
An object that specifies organization managed rule metadata such as resource type and ID of AWS resource along with the rule identifier.
It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.

## SYNTAX

```
Add-VSConfigOrganizationConfigRuleOrganizationManagedRuleMetadata [[-TagKeyScope] <Object>]
 [[-TagValueScope] <Object>] [[-Description] <Object>] [[-ResourceIdScope] <Object>] [-RuleIdentifier] <Object>
 [[-ResourceTypesScope] <Object>] [[-MaximumExecutionFrequency] <Object>] [[-InputParameters] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::OrganizationConfigRule.OrganizationManagedRuleMetadata resource property to the template.
An object that specifies organization managed rule metadata such as resource type and ID of AWS resource along with the rule identifier.
It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -TagKeyScope
One part of a key-value pair that make up a tag.
A key is a general label that acts like a category for more specific tag values.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagkeyscope
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagvaluescope
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-description
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

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourceidscope
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

### -RuleIdentifier
For organization config managed rules, a predefined identifier from a list.
For example, IAM_PASSWORD_POLICY is a managed rule.
To reference a managed rule, see Using AWS Managed Config Rules: https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-ruleidentifier
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

### -ResourceTypesScope
The type of the AWS resource that was evaluated.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourcetypesscope
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaximumExecutionFrequency
The maximum frequency with which AWS Config runs evaluations for a rule.
You are using an AWS managed rule that is triggered at a periodic frequency.
By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the MaximumExecutionFrequency parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-maximumexecutionfrequency
PrimitiveType: String
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

### -InputParameters
A string, in JSON format, that is passed to organization config rule Lambda function.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-inputparameters
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.OrganizationConfigRule.OrganizationManagedRuleMetadata
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html)

