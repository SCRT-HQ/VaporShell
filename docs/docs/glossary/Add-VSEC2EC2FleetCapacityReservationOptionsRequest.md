# Add-VSEC2EC2FleetCapacityReservationOptionsRequest

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.CapacityReservationOptionsRequest resource property to the template.
Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.

## SYNTAX

```
Add-VSEC2EC2FleetCapacityReservationOptionsRequest [[-UsageStrategy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.CapacityReservationOptionsRequest resource property to the template.
Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.

**Note**

This strategy can only be used if the EC2 Fleet is of type instant.

For more information about Capacity Reservations, see On-Demand Capacity Reservations: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html in the *Amazon Elastic Compute Cloud User Guide*.
For examples of using Capacity Reservations in an EC2 Fleet, see EC2 Fleet Example Configurations: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html in the *Amazon Elastic Compute Cloud User Guide*.

## PARAMETERS

### -UsageStrategy
Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity.
If you specify use-capacity-reservations-first, the fleet uses unused Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity.
If multiple instance pools have unused Capacity Reservations, the On-Demand allocation strategy lowest-price or prioritized is applied.
If the number of unused Capacity Reservations is less than the On-Demand target capacity, the remaining On-Demand target capacity is launched according to the On-Demand allocation strategy lowest-price or prioritized.
If you do not specify a value, the fleet fulfils the On-Demand capacity according to the chosen On-Demand allocation strategy.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html#cfn-ec2-ec2fleet-capacityreservationoptionsrequest-usagestrategy
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.EC2Fleet.CapacityReservationOptionsRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html)

