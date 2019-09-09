# Add-VSEC2InstanceSsmAssociation

## SYNOPSIS
Adds an AWS::EC2::Instance.SsmAssociation resource property to the template.
Specifies the SSM document and parameter values in AWS Systems Manager to associate with an instance.

## SYNTAX

```
Add-VSEC2InstanceSsmAssociation [[-AssociationParameters] <Object>] [-DocumentName] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.SsmAssociation resource property to the template.
Specifies the SSM document and parameter values in AWS Systems Manager to associate with an instance.

SsmAssociations is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AssociationParameters
The input parameter values to use with the associated SSM document.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-associationparameters
DuplicatesAllowed: True
ItemType: AssociationParameter
Type: List
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

### -DocumentName
The name of an SSM document to associate with the instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-documentname
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

### Vaporshell.Resource.EC2.Instance.SsmAssociation
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html)

