# Add-VSDLMLifecyclePolicyParameters

## SYNOPSIS
Adds an AWS::DLM::LifecyclePolicy.Parameters resource property to the template.
Specifies optional parameters to add to a policy.
The set of valid parameters depends on the combination of policy type and resource type.

## SYNTAX

```
Add-VSDLMLifecyclePolicyParameters [[-ExcludeBootVolume] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DLM::LifecyclePolicy.Parameters resource property to the template.
Specifies optional parameters to add to a policy.
The set of valid parameters depends on the combination of policy type and resource type.

## PARAMETERS

### -ExcludeBootVolume
EBS Snapshot Management - Instance policies only\] Indicates whether to exclude the root volume from snapshots created using CreateSnapshots: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSnapshots.html.
The default is false.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html#cfn-dlm-lifecyclepolicy-parameters-excludebootvolume
PrimitiveType: Boolean
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

### Vaporshell.Resource.DLM.LifecyclePolicy.Parameters
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html)

