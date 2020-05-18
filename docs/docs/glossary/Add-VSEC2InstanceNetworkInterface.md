# Add-VSEC2InstanceNetworkInterface

## SYNOPSIS
Adds an AWS::EC2::Instance.NetworkInterface resource property to the template.
Specifies a network interface that is to be attached to an instance.

## SYNTAX

```
Add-VSEC2InstanceNetworkInterface [[-AssociatePublicIpAddress] <Object>] [[-DeleteOnTermination] <Object>]
 [[-Description] <Object>] [-DeviceIndex] <Object> [[-GroupSet] <Object>] [[-Ipv6AddressCount] <Object>]
 [[-Ipv6Addresses] <Object>] [[-NetworkInterfaceId] <Object>] [[-PrivateIpAddress] <Object>]
 [[-PrivateIpAddresses] <Object>] [[-SecondaryPrivateIpAddressCount] <Object>] [[-SubnetId] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::Instance.NetworkInterface resource property to the template.
Specifies a network interface that is to be attached to an instance.

NetworkInterface is a property of the AWS::EC2::Instance: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html resource.

## PARAMETERS

### -AssociatePublicIpAddress
Indicates whether to assign a public IPv4 address to an instance you launch in a VPC.
The public IP address can only be assigned to a network interface for eth0, and can only be assigned to a new network interface, not an existing one.
You cannot specify more than one network interface in the request.
If launching into a default subnet, the default value is true.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-associatepubip
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

### -DeleteOnTermination
If set to true, the interface is deleted when the instance is terminated.
You can specify true only if creating a new network interface when launching an instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-delete
PrimitiveType: Boolean
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of the network interface.
Applies only if creating a network interface when launching an instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-description
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeviceIndex
The position of the network interface in the attachment order.
A primary network interface has a device index of 0.
If you specify a network interface when launching an instance, you must specify the device index.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-deviceindex
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupSet
The IDs of the security groups for the network interface.
Applies only if creating a network interface when launching an instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-groupset
DuplicatesAllowed: True
PrimitiveItemType: String
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ipv6AddressCount
A number of IPv6 addresses to assign to the network interface.
Amazon EC2 chooses the IPv6 addresses from the range of the subnet.
You cannot specify this option and the option to assign specific IPv6 addresses in the same request.
You can specify this option if you've specified a minimum number of instances to launch.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#cfn-ec2-instance-networkinterface-ipv6addresscount
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ipv6Addresses
The IPv6 addresses associated with the network interface.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#cfn-ec2-instance-networkinterface-ipv6addresses
DuplicatesAllowed: True
ItemType: InstanceIpv6Address
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkInterfaceId
The ID of the network interface.
If you are creating a Spot Fleet, omit this parameter because you can't specify a network interface ID in a launch specification.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-network-iface
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIpAddress
The private IPv4 address of the network interface.
Applies only if creating a network interface when launching an instance.
You cannot specify this option if you're launching more than one instance in a RunInstances: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-privateipaddress
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateIpAddresses
One or more private IPv4 addresses to assign to the network interface.
Only one private IPv4 address can be designated as primary.
You cannot specify this option if you're launching more than one instance in a RunInstances: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-privateipaddresses
DuplicatesAllowed: True
ItemType: PrivateIpAddressSpecification
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecondaryPrivateIpAddressCount
The number of secondary private IPv4 addresses.
You can't specify this option and specify more than one private IP address using the private IP addresses option.
You cannot specify this option if you're launching more than one instance in a RunInstances: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html request.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-secondprivateip
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetId
The ID of the subnet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-subnetid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.Instance.NetworkInterface
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html)

