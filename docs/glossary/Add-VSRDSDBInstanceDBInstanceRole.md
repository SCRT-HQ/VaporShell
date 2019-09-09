# Add-VSRDSDBInstanceDBInstanceRole

## SYNOPSIS
Adds an AWS::RDS::DBInstance.DBInstanceRole resource property to the template.
Describes an AWS Identity and Access Management (IAM role that is associated with a DB instance.

## SYNTAX

```
Add-VSRDSDBInstanceDBInstanceRole [-FeatureName] <Object> [-RoleArn] <Object> [[-Status] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::RDS::DBInstance.DBInstanceRole resource property to the template.
Describes an AWS Identity and Access Management (IAM role that is associated with a DB instance.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -FeatureName
The name of the feature associated with the AWS Identity and Access Management IAM role.
For the list of supported feature names, see DBEngineVersion.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-featurename
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

### -RoleArn
The Amazon Resource Name ARN of the IAM role that is associated with the DB instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-rolearn
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

### -Status
Describes the state of association between the IAM role and the DB instance.
The Status property returns one of the following values:
+  ACTIVE - the IAM role ARN is associated with the DB instance and can be used to access other AWS services on your behalf.
+  PENDING - the IAM role ARN is being associated with the DB instance.
+  INVALID - the IAM role ARN is associated with the DB instance, but the DB instance is unable to assume the IAM role in order to access other AWS services on your behalf.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-status
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.RDS.DBInstance.DBInstanceRole
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html)

