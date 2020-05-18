# Add-VSDLMLifecyclePolicyPolicyDetails

## SYNOPSIS
Adds an AWS::DLM::LifecyclePolicy.PolicyDetails resource property to the template.
Specifies the configuration of a lifecycle policy.

## SYNTAX

```
Add-VSDLMLifecyclePolicyPolicyDetails [-ResourceTypes] <Object> [-Schedules] <Object> [[-PolicyType] <Object>]
 [[-Parameters] <Object>] [-TargetTags] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::DLM::LifecyclePolicy.PolicyDetails resource property to the template.
Specifies the configuration of a lifecycle policy.

## PARAMETERS

### -ResourceTypes
The resource type.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcetypes
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

### -Schedules
The schedule of policy-defined actions.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-schedules
ItemType: Schedule
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyType
The valid target resource types and actions a policy can manage.
The default is EBS_SNAPSHOT_MANAGEMENT.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-policytype
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

### -Parameters
A set of optional parameters for the policy.

Type: Parameters
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-parameters
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

### -TargetTags
The single tag that identifies targeted resources for this policy.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-targettags
ItemType: Tag
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.DLM.LifecyclePolicy.PolicyDetails
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html)

