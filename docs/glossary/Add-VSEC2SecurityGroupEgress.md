# Add-VSEC2SecurityGroupEgress

## SYNOPSIS
Adds an AWS::EC2::SecurityGroup.Egress resource property to the template.
Specifies an outbound rule for a security group.
An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 CIDR address ranges, or to the instances associated with the specified destination security groups.

## SYNTAX

```
Add-VSEC2SecurityGroupEgress [[-CidrIp] <Object>] [[-CidrIpv6] <Object>] [[-Description] <Object>]
 [[-DestinationPrefixListId] <Object>] [[-DestinationSecurityGroupId] <Object>] [[-FromPort] <Object>]
 [-IpProtocol] <Object> [[-ToPort] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::SecurityGroup.Egress resource property to the template.
Specifies an outbound rule for a security group.
An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 CIDR address ranges, or to the instances associated with the specified destination security groups.

You must specify only one of the following properties: CidrIp, CidrIpv6, DestinationPrefixListId, or DestinationSecurityGroupId.

The EC2 Security Group Rule is an embedded property of the AWS::EC2::SecurityGroup type.

## PARAMETERS

### -CidrIp
The destination IPv4 address range, in CIDR format.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidrip
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

### -CidrIpv6
EC2-VPC only\] The IPv6 ranges.
The destination IPv6 address range, in CIDR format.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-cidripv6
PrimitiveType: String
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
A description for the security group rule.
Constraints: Up to 255 characters in length.
Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/#,@\]+=;{}!$*

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-description
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

### -DestinationPrefixListId
EC2-VPC only\] The prefix list IDs for the destination AWS service.
This is the AWS service that you want to access through a VPC endpoint from instances associated with the security group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-destinationprefixlistid
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DestinationSecurityGroupId
The ID of the destination VPC security group.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-destsecgroupid
PrimitiveType: String
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

### -FromPort
The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number.
A value of -1 indicates all ICMP/ICMPv6 types.
If you specify all ICMP/ICMPv6 types, you must specify all codes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-fromport
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

### -IpProtocol
The IP protocol name tcp, udp, icmp, icmpv6 or number see Protocol Numbers: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml.
VPC only\] Use -1 to specify all protocols.
When authorizing security group rules, specifying -1 or a protocol number other than tcp, udp, icmp, or icmpv6 allows traffic on all ports, regardless of any port range you specify.
For tcp, udp, and icmp, you must specify a port range.
For icmpv6, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-ipprotocol
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToPort
The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
A value of -1 indicates all ICMP/ICMPv6 codes.
If you specify all ICMP/ICMPv6 types, you must specify all codes.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html#cfn-ec2-security-group-rule-toport
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.SecurityGroup.Egress
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group-rule.html)

