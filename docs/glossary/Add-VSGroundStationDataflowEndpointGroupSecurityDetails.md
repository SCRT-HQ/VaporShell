# Add-VSGroundStationDataflowEndpointGroupSecurityDetails

## SYNOPSIS
Adds an AWS::GroundStation::DataflowEndpointGroup.SecurityDetails resource property to the template.
Information about IAM roles, subnets, and security groups needed for this DataflowEndpointGroup.

## SYNTAX

```
Add-VSGroundStationDataflowEndpointGroupSecurityDetails [[-SubnetIds] <Object>] [[-SecurityGroupIds] <Object>]
 [[-RoleArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::GroundStation::DataflowEndpointGroup.SecurityDetails resource property to the template.
Information about IAM roles, subnets, and security groups needed for this DataflowEndpointGroup.

## PARAMETERS

### -SubnetIds
The subnet Ids of the security details, such as subnet-12345678.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html#cfn-groundstation-dataflowendpointgroup-securitydetails-subnetids
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### -SecurityGroupIds
The security group Ids of the security role, such as sg-1234567890abcdef0.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html#cfn-groundstation-dataflowendpointgroup-securitydetails-securitygroupids
UpdateType: Mutable
Type: List
PrimitiveItemType: String

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

### -RoleArn
The ARN of a role which Ground Station has permission to assume, such as arn:aws:iam::1234567890:role/DataDeliveryServiceRole.
Ground Station will assume this role and create an ENI in your VPC on the specified subnet upon creation of a dataflow endpoint group.
This ENI is used as the ingress/egress point for data streamed during a satellite contact.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html#cfn-groundstation-dataflowendpointgroup-securitydetails-rolearn
UpdateType: Mutable
PrimitiveType: String

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.GroundStation.DataflowEndpointGroup.SecurityDetails
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-securitydetails.html)

