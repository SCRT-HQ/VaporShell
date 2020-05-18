# Add-VSEKSNodegroupRemoteAccess

## SYNOPSIS
Adds an AWS::EKS::Nodegroup.RemoteAccess resource property to the template.
An object representing the remote access configuration for the managed node group.

## SYNTAX

```
Add-VSEKSNodegroupRemoteAccess [[-SourceSecurityGroups] <Object>] [-Ec2SshKey] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EKS::Nodegroup.RemoteAccess resource property to the template.
An object representing the remote access configuration for the managed node group.

## PARAMETERS

### -SourceSecurityGroups
The security groups that are allowed SSH access port 22 to the worker nodes.
If you specify an Amazon EC2 SSH key but do not specify a source security group when you create a managed node group, then port 22 on the worker nodes is opened to the internet 0.0.0.0/0.
For more information, see Security Groups for Your VPC: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html in the *Amazon Virtual Private Cloud User Guide*.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-sourcesecuritygroups
UpdateType: Immutable

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

### -Ec2SshKey
The Amazon EC2 SSH key that provides access for SSH communication with the worker nodes in the managed node group.
For more information, see Amazon EC2 Key Pairs: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html in the *Amazon Elastic Compute Cloud User Guide for Linux Instances*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-ec2sshkey
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.EKS.Nodegroup.RemoteAccess
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html)

