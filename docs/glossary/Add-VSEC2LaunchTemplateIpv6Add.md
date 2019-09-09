# Add-VSEC2LaunchTemplateIpv6Add

## SYNOPSIS
Adds an AWS::EC2::LaunchTemplate.Ipv6Add resource property to the template.
Specifies an IPv6 address in an Amazon EC2 launch template.

## SYNTAX

```
Add-VSEC2LaunchTemplateIpv6Add [[-Ipv6Address] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::LaunchTemplate.Ipv6Add resource property to the template.
Specifies an IPv6 address in an Amazon EC2 launch template.

Ipv6Add is a property of the Amazon EC2 LaunchTemplate NetworkInterface: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html property type.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Ipv6Address
One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet.
You can't use this option if you're specifying a number of IPv6 addresses.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html#cfn-ec2-launchtemplate-ipv6add-ipv6address
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

### Vaporshell.Resource.EC2.LaunchTemplate.Ipv6Add
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html)

