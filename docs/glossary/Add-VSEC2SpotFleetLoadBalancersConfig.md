# Add-VSEC2SpotFleetLoadBalancersConfig

## SYNOPSIS
Adds an AWS::EC2::SpotFleet.LoadBalancersConfig resource property to the template.
Specifies the Classic Load Balancers and target groups to attach to a Spot Fleet request.

## SYNTAX

```
Add-VSEC2SpotFleetLoadBalancersConfig [[-ClassicLoadBalancersConfig] <Object>] [[-TargetGroupsConfig] <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::SpotFleet.LoadBalancersConfig resource property to the template.
Specifies the Classic Load Balancers and target groups to attach to a Spot Fleet request.

## PARAMETERS

### -ClassicLoadBalancersConfig
The Classic Load Balancers.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-classicloadbalancersconfig
Type: ClassicLoadBalancersConfig
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

### -TargetGroupsConfig
The target groups.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-targetgroupsconfig
Type: TargetGroupsConfig
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.SpotFleet.LoadBalancersConfig
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html)

