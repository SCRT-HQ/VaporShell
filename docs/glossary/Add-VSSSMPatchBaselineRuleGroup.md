# Add-VSSSMPatchBaselineRuleGroup

## SYNOPSIS
Adds an AWS::SSM::PatchBaseline.RuleGroup resource property to the template.
The RuleGroup property type specifies a set of rules that define the approval rules for an AWS Systems Manager patch baseline.

## SYNTAX

```
Add-VSSSMPatchBaselineRuleGroup [[-PatchRules] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::PatchBaseline.RuleGroup resource property to the template.
The RuleGroup property type specifies a set of rules that define the approval rules for an AWS Systems Manager patch baseline.

RuleGroup is the property type for the ApprovalRules property of the AWS::SSM::PatchBaseline: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html resource.

## PARAMETERS

### -PatchRules
The rules that make up the rule group.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html#cfn-ssm-patchbaseline-rulegroup-patchrules
ItemType: Rule
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.PatchBaseline.RuleGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html)

