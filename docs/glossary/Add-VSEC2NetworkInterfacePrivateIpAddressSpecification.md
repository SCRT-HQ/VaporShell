# Add-VSEC2NetworkInterfacePrivateIpAddressSpecification

## SYNOPSIS
Adds an AWS::EC2::NetworkInterface.PrivateIpAddressSpecification resource property to the template.
Describes a secondary private IPv4 address for a network interface.

## SYNTAX

```
Add-VSEC2NetworkInterfacePrivateIpAddressSpecification [-Primary] <Boolean> [-PrivateIpAddress] <Object>
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::NetworkInterface.PrivateIpAddressSpecification resource property to the template.
Describes a secondary private IPv4 address for a network interface.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Primary
Sets the private IP address as the primary private address.
You can set only one primary private IP address.
If you don't specify a primary private IP address, Amazon EC2 automatically assigns a primary private IP address.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-primary
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIpAddress
The private IP address of the network interface.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-privateipaddress
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

### Vaporshell.Resource.EC2.NetworkInterface.PrivateIpAddressSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html)

