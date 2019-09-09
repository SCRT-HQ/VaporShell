# Add-VSEC2InstanceElasticGpuSpecification

## SYNOPSIS
Adds an AWS::EC2::Instance.ElasticGpuSpecification resource property to the template.
Specifies the type of Elastic GPU.
An Elastic GPU is a GPU resource that you can attach to your Amazon EC2 instance to accelerate the graphics performance of your applications.
For more information, see  Amazon EC2 Elastic GPUs: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html in the *Amazon EC2 User Guide for Windows Instances*.

## SYNTAX

```
Add-VSEC2InstanceElasticGpuSpecification [-Type] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.ElasticGpuSpecification resource property to the template.
Specifies the type of Elastic GPU.
An Elastic GPU is a GPU resource that you can attach to your Amazon EC2 instance to accelerate the graphics performance of your applications.
For more information, see  Amazon EC2 Elastic GPUs: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html in the *Amazon EC2 User Guide for Windows Instances*.

ElasticGpuSpecification is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Type
The type of Elastic Graphics accelerator.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html#cfn-ec2-instance-elasticgpuspecification-type
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

### Vaporshell.Resource.EC2.Instance.ElasticGpuSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html)

