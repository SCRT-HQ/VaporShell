# Add-VSSSMPatchBaselinePatchFilter

## SYNOPSIS
Adds an AWS::SSM::PatchBaseline.PatchFilter resource property to the template.
The PatchFilter property type defines a patch filter for an AWS Systems Manager patch baseline.

## SYNTAX

```
Add-VSSSMPatchBaselinePatchFilter [[-Values] <Object>] [[-Key] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::SSM::PatchBaseline.PatchFilter resource property to the template.
The PatchFilter property type defines a patch filter for an AWS Systems Manager patch baseline.

The PatchFilters property of the PatchFilterGroup: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html property type contains a list of PatchFilter property types.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Values
The value for the filter key.
For information about valid values for each key based on operating system type, see PatchFilter: https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html in the *AWS Systems Manager API Reference*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-values
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

### -Key
The key for the filter.
For information about valid keys, see PatchFilter: https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html in the *AWS Systems Manager API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-key
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.SSM.PatchBaseline.PatchFilter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html)

