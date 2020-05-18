# Add-VSManagedBlockchainMemberApprovalThresholdPolicy

## SYNOPSIS
Adds an AWS::ManagedBlockchain::Member.ApprovalThresholdPolicy resource property to the template.
A policy type that defines the voting rules for the network.
The rules decide if a proposal is approved.
Approval may be based on criteria such as the percentage of YES votes and the duration of the proposal.
The policy applies to all proposals and is specified when the network is created.

## SYNTAX

```
Add-VSManagedBlockchainMemberApprovalThresholdPolicy [[-ThresholdComparator] <Object>]
 [[-ThresholdPercentage] <Object>] [[-ProposalDurationInHours] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ManagedBlockchain::Member.ApprovalThresholdPolicy resource property to the template.
A policy type that defines the voting rules for the network.
The rules decide if a proposal is approved.
Approval may be based on criteria such as the percentage of YES votes and the duration of the proposal.
The policy applies to all proposals and is specified when the network is created.

## PARAMETERS

### -ThresholdComparator
Determines whether the vote percentage must be greater than the ThresholdPercentage or must be greater than or equal to the ThreholdPercentage to be approved.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdcomparator
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

### -ThresholdPercentage
The percentage of votes among all members that must be YES for a proposal to be approved.
For example, a ThresholdPercentage value of 50 indicates 50%.
The ThresholdComparator determines the precise comparison.
If a ThresholdPercentage value of 50 is specified on a network with 10 members, along with a ThresholdComparator value of GREATER_THAN, this indicates that 6 YES votes are required for the proposal to be approved.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdpercentage
PrimitiveType: Integer
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

### -ProposalDurationInHours
The duration from the time that a proposal is created until it expires.
If members cast neither the required number of YES votes to approve the proposal nor the number of NO votes required to reject it before the duration expires, the proposal is EXPIRED and ProposalActions are not carried out.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-proposaldurationinhours
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ManagedBlockchain.Member.ApprovalThresholdPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html)

