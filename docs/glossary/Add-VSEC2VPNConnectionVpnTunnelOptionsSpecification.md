# Add-VSEC2VPNConnectionVpnTunnelOptionsSpecification

## SYNOPSIS
Adds an AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification resource property to the template.
The tunnel options for a single VPN tunnel.

## SYNTAX

```
Add-VSEC2VPNConnectionVpnTunnelOptionsSpecification [[-PreSharedKey] <Object>] [[-TunnelInsideCidr] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification resource property to the template.
The tunnel options for a single VPN tunnel.

## PARAMETERS

### -PreSharedKey
The pre-shared key PSK to establish initial authentication between the virtual private gateway and customer gateway.
Constraints: Allowed characters are alphanumeric characters, periods ., and underscores _.
Must be between 8 and 64 characters in length and cannot start with zero 0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-presharedkey
PrimitiveType: String
UpdateType: Immutable

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

### -TunnelInsideCidr
The range of inside IP addresses for the tunnel.
Any specified CIDR blocks must be unique across all VPN connections that use the same virtual private gateway.
Constraints: A size /30 CIDR block from the 169.254.0.0/16 range.
The following CIDR blocks are reserved and cannot be used:
+  169.254.0.0/30
+  169.254.1.0/30
+  169.254.2.0/30
+  169.254.3.0/30
+  169.254.4.0/30
+  169.254.5.0/30
+  169.254.169.252/30

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-tunnelinsidecidr
PrimitiveType: String
UpdateType: Immutable

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.VPNConnection.VpnTunnelOptionsSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html)

