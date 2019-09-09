# Add-VSEC2InstanceNoDevice

## SYNOPSIS
Adds an AWS::EC2::Instance.NoDevice resource property to the template.
Suppresses the specified device included in the block device mapping of the AMI.
To suppress a device, specify an empty string.

## SYNTAX

```
Add-VSEC2InstanceNoDevice [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.NoDevice resource property to the template.
Suppresses the specified device included in the block device mapping of the AMI.
To suppress a device, specify an empty string.

NoDevice is a property of the  Amazon EC2 BlockDeviceMapping: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html property.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance.NoDevice
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-nodevice.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-nodevice.html)

