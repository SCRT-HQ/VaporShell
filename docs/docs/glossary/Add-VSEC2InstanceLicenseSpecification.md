# Add-VSEC2InstanceLicenseSpecification

## SYNOPSIS
Adds an AWS::EC2::Instance.LicenseSpecification resource property to the template.
Specifies the license configuration to use.

## SYNTAX

```
Add-VSEC2InstanceLicenseSpecification [-LicenseConfigurationArn] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.LicenseSpecification resource property to the template.
Specifies the license configuration to use.

LicenseSpecification is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## PARAMETERS

### -LicenseConfigurationArn
The Amazon Resource Name ARN of the license configuration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html#cfn-ec2-instance-licensespecification-licenseconfigurationarn
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance.LicenseSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html)

