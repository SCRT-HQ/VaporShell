# Add-VSEC2InstanceHibernationOptions

## SYNOPSIS
Adds an AWS::EC2::Instance.HibernationOptions resource property to the template.
Specifies the hibernation options for the instance.

## SYNTAX

```
Add-VSEC2InstanceHibernationOptions [[-Configured] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.HibernationOptions resource property to the template.
Specifies the hibernation options for the instance.

HibernationOptions is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## PARAMETERS

### -Configured
If you set this parameter to true, your instance is enabled for hibernation.
Default: false

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html#cfn-ec2-instance-hibernationoptions-configured
PrimitiveType: Boolean
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

### Vaporshell.Resource.EC2.Instance.HibernationOptions
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html)

