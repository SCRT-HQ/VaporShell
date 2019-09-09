# Add-VSSSMPatchBaselineRule

## SYNOPSIS
Adds an AWS::SSM::PatchBaseline.Rule resource property to the template.
The Rule property type specifies an approval rule for a Systems Manager patch baseline.

## SYNTAX

```
Add-VSSSMPatchBaselineRule [[-EnableNonSecurity] <Boolean>] [[-PatchFilterGroup] <Object>]
 [[-ApproveAfterDays] <Int32>] [[-ComplianceLevel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::PatchBaseline.Rule resource property to the template.
The Rule property type specifies an approval rule for a Systems Manager patch baseline.

The PatchRules property of the RuleGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html property type contains a list of Rule property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -EnableNonSecurity
For instances identified by the approval rule filters, enables a patch baseline to apply non-security updates available in the specified repository.
The default value is 'false'.
Applies to Linux instances only.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-enablenonsecurity
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PatchFilterGroup
The patch filter group that defines the criteria for the rule.

Type: PatchFilterGroup
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-patchfiltergroup
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

### -ApproveAfterDays
The number of days after the release date of each patch matched by the rule that the patch is marked as approved in the patch baseline.
For example, a value of 7 means that patches are approved seven days after they are released.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-approveafterdays
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComplianceLevel
A compliance severity level for all approved patches in a patch baseline.
Valid compliance severity levels include the following: UNSPECIFIED, CRITICAL, HIGH, MEDIUM, LOW, and INFORMATIONAL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-compliancelevel
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

### Vaporshell.Resource.SSM.PatchBaseline.Rule
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html)

