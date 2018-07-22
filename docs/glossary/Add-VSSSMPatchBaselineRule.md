---
layout: glossary
title: Add-VSSSMPatchBaselineRule
categories: glossary
label1: Category
data1: Documentation
label2: Depth
data2: Deep
schema: 2.0.0
---

# Add-VSSSMPatchBaselineRule

## SYNOPSIS
Adds an AWS::SSM::PatchBaseline.Rule resource property to the template

## SYNTAX

```
Add-VSSSMPatchBaselineRule [[-EnableNonSecurity] <Boolean>] [[-PatchFilterGroup] <Object>]
 [[-ApproveAfterDays] <Int32>] [[-ComplianceLevel] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::PatchBaseline.Rule resource property to the template

## PARAMETERS

### -EnableNonSecurity
Required: False    
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
Type: PatchFilterGroup    
Required: False    
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
Required: False    
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
Required: False    
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
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.PatchBaseline.Rule

## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html)

