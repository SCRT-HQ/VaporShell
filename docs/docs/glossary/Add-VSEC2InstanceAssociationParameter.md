# Add-VSEC2InstanceAssociationParameter

## SYNOPSIS
Adds an AWS::EC2::Instance.AssociationParameter resource property to the template.
Specifies input parameter values for an SSM document in AWS Systems Manager.

## SYNTAX

```
Add-VSEC2InstanceAssociationParameter [-Key] <Object> [-Value] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.AssociationParameter resource property to the template.
Specifies input parameter values for an SSM document in AWS Systems Manager.

AssociationParameter is a property of the  Amazon EC2 Instance SsmAssociation: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html property.

## PARAMETERS

### -Key
The name of an input parameter that is in the associated SSM document.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-key
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

### -Value
The value of an input parameter.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-value
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
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

### Vaporshell.Resource.EC2.Instance.AssociationParameter
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html)

