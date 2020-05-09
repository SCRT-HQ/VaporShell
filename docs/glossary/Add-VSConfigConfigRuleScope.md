# Add-VSConfigConfigRuleScope

## SYNOPSIS
Adds an AWS::Config::ConfigRule.Scope resource property to the template.
Defines which resources trigger an evaluation for an AWS Config rule.
The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID.
Specify a scope to constrain which resources trigger an evaluation for a rule.
Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.

## SYNTAX

```
Add-VSConfigConfigRuleScope [[-ComplianceResourceId] <Object>] [[-ComplianceResourceTypes] <Object>]
 [[-TagKey] <Object>] [[-TagValue] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Config::ConfigRule.Scope resource property to the template.
Defines which resources trigger an evaluation for an AWS Config rule.
The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID.
Specify a scope to constrain which resources trigger an evaluation for a rule.
Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.

## PARAMETERS

### -ComplianceResourceId
The ID of the only AWS resource that you want to trigger an evaluation for the rule.
If you specify a resource ID, you must specify one resource type for ComplianceResourceTypes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-complianceresourceid
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

### -ComplianceResourceTypes
The resource types of only those AWS resources that you want to trigger an evaluation for the rule.
You can only specify one type if you also specify a resource ID for ComplianceResourceId.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-complianceresourcetypes
DuplicatesAllowed: False
PrimitiveItemType: String
Type: List
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

### -TagKey
The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-tagkey
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

### -TagValue
The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule.
If you specify a value for TagValue, you must also specify a value for TagKey.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-tagvalue
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Config.ConfigRule.Scope
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html)

