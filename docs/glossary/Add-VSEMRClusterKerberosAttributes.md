# Add-VSEMRClusterKerberosAttributes

## SYNOPSIS
Adds an AWS::EMR::Cluster.KerberosAttributes resource property to the template.
KerberosAttributes is a property of the AWS::EMR::Cluster resource.
KerberosAttributes define the cluster-specific Kerberos configuration when Kerberos authentication is enabled using a security configuration.
The cluster-specific configuration must be compatible with the security configuration.
For more information see Use Kerberos Authentication: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html in the *EMR Management Guide*.

## SYNTAX

```
Add-VSEMRClusterKerberosAttributes [[-ADDomainJoinPassword] <Object>] [[-ADDomainJoinUser] <Object>]
 [[-CrossRealmTrustPrincipalPassword] <Object>] [-KdcAdminPassword] <Object> [-Realm] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.KerberosAttributes resource property to the template.
KerberosAttributes is a property of the AWS::EMR::Cluster resource.
KerberosAttributes define the cluster-specific Kerberos configuration when Kerberos authentication is enabled using a security configuration.
The cluster-specific configuration must be compatible with the security configuration.
For more information see Use Kerberos Authentication: https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html in the *EMR Management Guide*.

## PARAMETERS

### -ADDomainJoinPassword
The Active Directory password for ADDomainJoinUser.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-addomainjoinpassword
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

### -ADDomainJoinUser
Required only when establishing a cross-realm trust with an Active Directory domain.
A user with sufficient privileges to join resources to the domain.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-addomainjoinuser
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

### -CrossRealmTrustPrincipalPassword
Required only when establishing a cross-realm trust with a KDC in a different realm.
The cross-realm principal password, which must be identical across realms.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-crossrealmtrustprincipalpassword
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

### -KdcAdminPassword
The password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-kdcadminpassword
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Realm
The name of the Kerberos realm to which all nodes in a cluster belong.
For example, EC2.INTERNAL.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html#cfn-elasticmapreduce-cluster-kerberosattributes-realm
PrimitiveType: String
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

### Vaporshell.Resource.EMR.Cluster.KerberosAttributes
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-kerberosattributes.html)

