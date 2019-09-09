# Add-VSEC2EC2FleetOnDemandOptionsRequest

## SYNOPSIS
Adds an AWS::EC2::EC2Fleet.OnDemandOptionsRequest resource property to the template.
Specifies the allocation strategy of On-Demand Instances in an EC2 Fleet.

## SYNTAX

```
Add-VSEC2EC2FleetOnDemandOptionsRequest [[-AllocationStrategy] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::EC2Fleet.OnDemandOptionsRequest resource property to the template.
Specifies the allocation strategy of On-Demand Instances in an EC2 Fleet.

OnDemandOptionsRequest is a property of the AWS::EC2::EC2Fleet: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html resource.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllocationStrategy
The order of the launch template overrides to use in fulfilling On-Demand capacity.
If you specify lowest-price, EC2 Fleet uses price to determine the order, launching the lowest price first.
If you specify prioritized, EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first.
If you do not specify a value, EC2 Fleet defaults to lowest-price.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-allocationstrategy
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

### Vaporshell.Resource.EC2.EC2Fleet.OnDemandOptionsRequest
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html)

