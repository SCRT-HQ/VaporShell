# Add-VSEC2SpotFleetClassicLoadBalancersConfig

## SYNOPSIS
Adds an AWS::EC2::SpotFleet.ClassicLoadBalancersConfig resource property to the template.
Specifies the Classic Load Balancers to attach to a Spot Fleet.
Spot Fleet registers the running Spot Instances with these Classic Load Balancers.

## SYNTAX

```
Add-VSEC2SpotFleetClassicLoadBalancersConfig [-ClassicLoadBalancers] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::SpotFleet.ClassicLoadBalancersConfig resource property to the template.
Specifies the Classic Load Balancers to attach to a Spot Fleet.
Spot Fleet registers the running Spot Instances with these Classic Load Balancers.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -ClassicLoadBalancers
One or more Classic Load Balancers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html#cfn-ec2-spotfleet-classicloadbalancersconfig-classicloadbalancers
DuplicatesAllowed: False
ItemType: ClassicLoadBalancer
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.SpotFleet.ClassicLoadBalancersConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html)

