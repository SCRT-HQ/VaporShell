# Add-VSSSMPatchBaselinePatchFilterGroup

## SYNOPSIS
Adds an AWS::SSM::PatchBaseline.PatchFilterGroup resource property to the template.
The PatchFilterGroup property type specifies a set of patch filters for an AWS Systems Manager patch baseline, typically used for approval rules for a Systems Manager patch baseline.

## SYNTAX

```
Add-VSSSMPatchBaselinePatchFilterGroup [[-PatchFilters] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::PatchBaseline.PatchFilterGroup resource property to the template.
The PatchFilterGroup property type specifies a set of patch filters for an AWS Systems Manager patch baseline, typically used for approval rules for a Systems Manager patch baseline.

PatchFilterGroup is the property type for the GlobalFilters property of the AWS::SSM::PatchBaseline: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html resource and the PatchFilterGroup property of the Rule: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -PatchFilters
The set of patch filters that make up the group.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html#cfn-ssm-patchbaseline-patchfiltergroup-patchfilters
ItemType: PatchFilter
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

### Vaporshell.Resource.SSM.PatchBaseline.PatchFilterGroup
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html)

