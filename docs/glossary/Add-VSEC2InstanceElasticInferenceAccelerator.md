# Add-VSEC2InstanceElasticInferenceAccelerator

## SYNOPSIS
Adds an AWS::EC2::Instance.ElasticInferenceAccelerator resource property to the template.
Specifies the Elastic Inference Accelerator for the instance.

## SYNTAX

```
Add-VSEC2InstanceElasticInferenceAccelerator [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.ElasticInferenceAccelerator resource property to the template.
Specifies the Elastic Inference Accelerator for the instance.

ElasticInferenceAccelerator is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The type of elastic inference accelerator.
The possible values are eia1.small, eia1.medium, and eia1.large.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-type
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

### Vaporshell.Resource.EC2.Instance.ElasticInferenceAccelerator
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html)

