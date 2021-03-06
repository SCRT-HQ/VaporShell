# Add-VSEC2InstanceCreditSpecification

## SYNOPSIS
Adds an AWS::EC2::Instance.CreditSpecification resource property to the template.
Specifies the credit option for CPU usage of a T2 or T3 instance.

## SYNTAX

```
Add-VSEC2InstanceCreditSpecification [[-CPUCredits] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.CreditSpecification resource property to the template.
Specifies the credit option for CPU usage of a T2 or T3 instance.

CreditSpecification is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## PARAMETERS

### -CPUCredits
The credit option for CPU usage of the instance.
Valid values are standard and unlimited.
T3 instances launch as unlimited by default.
T2 instances launch as standard by default.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html#cfn-ec2-instance-creditspecification-cpucredits
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

### Vaporshell.Resource.EC2.Instance.CreditSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html)

