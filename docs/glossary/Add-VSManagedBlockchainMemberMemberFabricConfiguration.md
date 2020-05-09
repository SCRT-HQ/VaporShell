# Add-VSManagedBlockchainMemberMemberFabricConfiguration

## SYNOPSIS
Adds an AWS::ManagedBlockchain::Member.MemberFabricConfiguration resource property to the template.
Configuration properties for Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.

## SYNTAX

```
Add-VSManagedBlockchainMemberMemberFabricConfiguration [-AdminUsername] <Object> [-AdminPassword] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ManagedBlockchain::Member.MemberFabricConfiguration resource property to the template.
Configuration properties for Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.

## PARAMETERS

### -AdminUsername
The user name for the member's initial administrative user.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminusername
PrimitiveType: String
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

### -AdminPassword
The password for the member's initial administrative user.
The AdminPassword must be at least eight characters long and no more than 32 characters.
It must contain at least one uppercase letter, one lowercase letter, and one digit.
It cannot have a single quote', double quote", forward slash/, backward slash, @, or a space.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminpassword
PrimitiveType: String
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ManagedBlockchain.Member.MemberFabricConfiguration
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html)

