# Add-VSEKSClusterProvider

## SYNOPSIS
Adds an AWS::EKS::Cluster.Provider resource property to the template.
Identifies the AWS Key Management Service (AWS KMS customer master key (CMK used to encrypt the secrets.

## SYNTAX

```
Add-VSEKSClusterProvider [[-KeyArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EKS::Cluster.Provider resource property to the template.
Identifies the AWS Key Management Service (AWS KMS customer master key (CMK used to encrypt the secrets.

## PARAMETERS

### -KeyArn
Amazon Resource Name ARN or alias of the customer master key CMK.
The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK.
For more information, see Allowing Users in Other Accounts to Use a CMK: https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html in the *AWS Key Management Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html#cfn-eks-cluster-provider-keyarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EKS.Cluster.Provider
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html)

