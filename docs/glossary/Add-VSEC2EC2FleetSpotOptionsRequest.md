# Add-VSEC2EC2FleetSpotOptionsRequest

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.SpotOptionsRequest resource property to the template.
Specifies the configuration of Spot Instances for an EC2 Fleet.

## SYNTAX

```
Add-VSEC2EC2FleetSpotOptionsRequest [[-SingleAvailabilityZone] <Object>] [[-AllocationStrategy] <Object>]
 [[-SingleInstanceType] <Object>] [[-MinTargetCapacity] <Object>] [[-MaxTotalPrice] <Object>]
 [[-InstanceInterruptionBehavior] <Object>] [[-InstancePoolsToUseCount] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.SpotOptionsRequest resource property to the template.
Specifies the configuration of Spot Instances for an EC2 Fleet.

SpotOptionsRequest is a property of the  AWS::EC2::EC2Fleet: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html resource.

## PARAMETERS

### -SingleAvailabilityZone
Indicates that the fleet launches all Spot Instances into a single Availability Zone.
Supported only for fleets of type instant.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-singleavailabilityzone
PrimitiveType: Boolean
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

### -AllocationStrategy
Indicates how to allocate the target Spot Instance capacity across the Spot Instance pools specified by the EC2 Fleet.
If the allocation strategy is lowestPrice, EC2 Fleet launches instances from the Spot Instance pools with the lowest price.
This is the default allocation strategy.
If the allocation strategy is diversified, EC2 Fleet launches instances from all the Spot Instance pools that you specify.
If the allocation strategy is capacityOptimized, EC2 Fleet launches instances from Spot Instance pools that are optimally chosen based on the available Spot Instance capacity.
*Allowed Values*: lowestPrice | diversified | capacityOptimized

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-allocationstrategy
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

### -SingleInstanceType
Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet.
Supported only for fleets of type instant.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-singleinstancetype
PrimitiveType: Boolean
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

### -MinTargetCapacity
The minimum target capacity for Spot Instances in the fleet.
If the minimum target capacity is not reached, the fleet launches no instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-mintargetcapacity
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

### -MaxTotalPrice
The maximum amount per hour for Spot Instances that you're willing to pay.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-maxtotalprice
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

### -InstanceInterruptionBehavior
The behavior when a Spot Instance is interrupted.
The default is terminate.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-instanceinterruptionbehavior
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

### -InstancePoolsToUseCount
The number of Spot pools across which to allocate your target Spot capacity.
Valid only when Spot **AllocationStrategy** is set to lowest-price.
EC2 Fleet selects the cheapest Spot pools and evenly allocates your target Spot capacity across the number of Spot pools that you specify.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-instancepoolstousecount
PrimitiveType: Integer
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.EC2Fleet.SpotOptionsRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html)

