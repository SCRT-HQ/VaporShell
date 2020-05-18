# Add-VSTransferServerEndpointDetails

## SYNOPSIS
Adds an AWS::Transfer::Server.EndpointDetails resource property to the template.
The virtual private cloud (VPC endpoint settings that are configured for your SFTP server.
When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IPs and make it accessible to clients over the internet.
You VPC's default security groups are automatically assigned to your endpoint.

## SYNTAX

```
Add-VSTransferServerEndpointDetails [[-AddressAllocationIds] <Object>] [[-VpcId] <Object>]
 [[-VpcEndpointId] <Object>] [[-SubnetIds] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Transfer::Server.EndpointDetails resource property to the template.
The virtual private cloud (VPC endpoint settings that are configured for your SFTP server.
When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IPs and make it accessible to clients over the internet.
You VPC's default security groups are automatically assigned to your endpoint.

**Note**

It is recommended that you use VPC as the EndpointType.
With this endpoint type, you have the option to directly associate up to three Elastic IPv4 addresses (BYO IP included with your server's endpoint and use VPC security groups to restrict traffic by the client's public IP address.
This is not possible with EndpointType set to VPC_ENDPOINT.

## PARAMETERS

### -AddressAllocationIds
A list of address allocation IDs that are required to attach an Elastic IP address to your SFTP server's endpoint.
This is only valid in the UpdateServer API.
This property can only be used when EndpointType is set to VPC.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-addressallocationids
UpdateType: Conditional

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

### -VpcId
The VPC ID of the virtual private cloud in which the SFTP server's endpoint will be hosted.
This property can only be used when EndpointType is set to VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcid
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

### -VpcEndpointId
The ID of the VPC endpoint.
This property can only be used when EndpointType is set to VPC_ENDPOINT.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
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

### -SubnetIds
A list of subnet IDs that are required to host your SFTP server endpoint in your VPC.
This property can only be used when EndpointType is set to VPC.

PrimitiveItemType: String
Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-subnetids
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.Transfer.Server.EndpointDetails
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html)

