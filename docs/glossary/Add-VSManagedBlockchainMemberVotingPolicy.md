# Add-VSManagedBlockchainMemberVotingPolicy

## SYNOPSIS
Adds an AWS::ManagedBlockchain::Member.VotingPolicy resource property to the template.
The voting rules for the network to decide if a proposal is accepted

## SYNTAX

```
Add-VSManagedBlockchainMemberVotingPolicy [[-ApprovalThresholdPolicy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ManagedBlockchain::Member.VotingPolicy resource property to the template.
The voting rules for the network to decide if a proposal is accepted

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ApprovalThresholdPolicy
Defines the rules for the network for voting on proposals, such as the percentage of YES votes required for the proposal to be approved and the duration of the proposal.
The policy applies to all proposals and is specified when the network is created.

Type: ApprovalThresholdPolicy
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html#cfn-managedblockchain-member-votingpolicy-approvalthresholdpolicy
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

### Vaporshell.Resource.ManagedBlockchain.Member.VotingPolicy
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html)

