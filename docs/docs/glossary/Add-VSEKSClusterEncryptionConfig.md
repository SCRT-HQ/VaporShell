# Add-VSEKSClusterEncryptionConfig

## SYNOPSIS
Adds an AWS::EKS::Cluster.EncryptionConfig resource property to the template.
The encryption configuration for the cluster.

## SYNTAX

```
Add-VSEKSClusterEncryptionConfig [[-Resources] <Object>] [[-Provider] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EKS::Cluster.EncryptionConfig resource property to the template.
The encryption configuration for the cluster.

## PARAMETERS

### -Resources
Specifies the resources to be encrypted.
The only supported value is "secrets".

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-resources
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

### -Provider
The encryption provider for the cluster.

Type: Provider
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-provider
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

### Vaporshell.Resource.EKS.Cluster.EncryptionConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html)

