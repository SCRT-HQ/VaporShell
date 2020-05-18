# Add-VSRDSDBInstanceDBInstanceRole

## SYNOPSIS
Adds an AWS::RDS::DBInstance.DBInstanceRole resource property to the template.
Describes an AWS Identity and Access Management (IAM role that is associated with a DB instance.

## SYNTAX

```
Add-VSRDSDBInstanceDBInstanceRole [-FeatureName] <Object> [-RoleArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::RDS::DBInstance.DBInstanceRole resource property to the template.
Describes an AWS Identity and Access Management (IAM role that is associated with a DB instance.

## PARAMETERS

### -FeatureName
The name of the feature associated with the AWS Identity and Access Management IAM role.
For the list of supported feature names, see DBEngineVersion: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DBEngineVersion.html in the *Amazon RDS API Reference*.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.RDS.DBInstance.DBInstanceRole
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html)

