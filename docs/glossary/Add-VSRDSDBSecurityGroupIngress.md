# Add-VSRDSDBSecurityGroupIngress

## SYNOPSIS
Adds an AWS::RDS::DBSecurityGroup.Ingress resource property to the template.
The Ingress property type specifies an individual ingress rule within an AWS::RDS::DBSecurityGroup resource.

## SYNTAX

```
Add-VSRDSDBSecurityGroupIngress [[-CIDRIP] <Object>] [[-EC2SecurityGroupId] <Object>]
 [[-EC2SecurityGroupName] <Object>] [[-EC2SecurityGroupOwnerId] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::RDS::DBSecurityGroup.Ingress resource property to the template.
The Ingress property type specifies an individual ingress rule within an AWS::RDS::DBSecurityGroup resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -CIDRIP
The IP range to authorize.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-cidrip
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

### -EC2SecurityGroupId
Id of the EC2 Security Group to authorize.
For VPC DB Security Groups, EC2SecurityGroupId must be provided.
Otherwise, EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId must be provided.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupid
PrimitiveType: String
UpdateType: Immutable

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

### -EC2SecurityGroupName
Name of the EC2 Security Group to authorize.
For VPC DB Security Groups, EC2SecurityGroupId must be provided.
Otherwise, EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId must be provided.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupname
PrimitiveType: String
UpdateType: Immutable

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

### -EC2SecurityGroupOwnerId
AWS Account Number of the owner of the EC2 Security Group specified in the EC2SecurityGroupName parameter.
The AWS Access Key ID is not an acceptable value.
For VPC DB Security Groups, EC2SecurityGroupId must be provided.
Otherwise, EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId must be provided.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html#cfn-rds-securitygroup-ec2securitygroupownerid
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.RDS.DBSecurityGroup.Ingress
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-security-group-rule.html)

