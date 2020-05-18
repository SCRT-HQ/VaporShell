# Add-VSEC2EC2FleetPlacement

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.Placement resource property to the template.
Describes the placement of an instance.

## SYNTAX

```
Add-VSEC2EC2FleetPlacement [[-GroupName] <Object>] [[-Tenancy] <Object>] [[-SpreadDomain] <Object>]
 [[-PartitionNumber] <Object>] [[-AvailabilityZone] <Object>] [[-Affinity] <Object>] [[-HostId] <Object>]
 [[-HostResourceGroupArn] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.Placement resource property to the template.
Describes the placement of an instance.

## PARAMETERS

### -GroupName
The name of the placement group the instance is in.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-groupname
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

### -Tenancy
The tenancy of the instance if the instance is running in a VPC.
An instance with a tenancy of dedicated runs on single-tenant hardware.
The host tenancy is not supported for the ImportInstance: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html command.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-tenancy
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

### -SpreadDomain
Reserved for future use.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-spreaddomain
PrimitiveType: String
UpdateType: Immutable

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

### -PartitionNumber
The number of the partition the instance is in.
Valid only if the placement group strategy is set to partition.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-partitionnumber
PrimitiveType: Integer
UpdateType: Immutable

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

### -AvailabilityZone
The Availability Zone of the instance.
If not specified, an Availability Zone will be automatically chosen for you based on the load balancing criteria for the Region.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-availabilityzone
PrimitiveType: String
UpdateType: Immutable

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

### -Affinity
The affinity setting for the instance on the Dedicated Host.
This parameter is not supported for the ImportInstance: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html command.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-affinity
PrimitiveType: String
UpdateType: Immutable

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

### -HostId
The ID of the Dedicated Host on which the instance resides.
This parameter is not supported for the ImportInstance: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html command.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-hostid
PrimitiveType: String
UpdateType: Immutable

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

### -HostResourceGroupArn
The ARN of the host resource group in which to launch the instances.
If you specify a host resource group ARN, omit the **Tenancy** parameter or set it to host.
This parameter is not supported by CreateFleet: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-hostresourcegrouparn
PrimitiveType: String
UpdateType: Immutable

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

### Vaporshell.Resource.EC2.EC2Fleet.Placement
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html)

