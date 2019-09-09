# Add-VSEC2SpotFleetSpotFleetRequestConfigData

## SYNOPSIS
Adds an AWS::EC2::SpotFleet.SpotFleetRequestConfigData resource property to the template.
Specifies the configuration of a Spot Fleet request.
For more information, see How Spot Fleet Works: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet.html in the *Amazon EC2 User Guide for Linux Instances*.

## SYNTAX

```
Add-VSEC2SpotFleetSpotFleetRequestConfigData [[-AllocationStrategy] <Object>]
 [[-ExcessCapacityTerminationPolicy] <Object>] [-IamFleetRole] <Object>
 [[-InstanceInterruptionBehavior] <Object>] [[-LaunchSpecifications] <Object>]
 [[-LaunchTemplateConfigs] <Object>] [[-LoadBalancersConfig] <Object>] [[-ReplaceUnhealthyInstances] <Boolean>]
 [[-SpotPrice] <Object>] [-TargetCapacity] <Int32> [[-TerminateInstancesWithExpiration] <Boolean>]
 [[-Type] <Object>] [[-ValidFrom] <Object>] [[-ValidUntil] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EC2::SpotFleet.SpotFleetRequestConfigData resource property to the template.
Specifies the configuration of a Spot Fleet request.
For more information, see How Spot Fleet Works: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet.html in the *Amazon EC2 User Guide for Linux Instances*.

You must specify either LaunchSpecifications or LaunchTemplateConfigs.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AllocationStrategy
Indicates how to allocate the target capacity across the Spot pools specified by the Spot Fleet request.
The default is lowestPrice.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-allocationstrategy
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

### -ExcessCapacityTerminationPolicy
Indicates whether running Spot Instances should be terminated if you decrease the target capacity of the Spot Fleet request below the current size of the Spot Fleet.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-excesscapacityterminationpolicy
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

### -IamFleetRole
The Amazon Resource Name ARN of an AWS Identity and Access Management IAM role that grants the Spot Fleet the permission to request, launch, terminate, and tag instances on your behalf.
For more information, see Spot Fleet Prerequisites: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html#spot-fleet-prerequisites in the *Amazon EC2 User Guide for Linux Instances*.
Spot Fleet can terminate Spot Instances on your behalf when you cancel its Spot Fleet request or when the Spot Fleet request expires, if you set TerminateInstancesWithExpiration.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-iamfleetrole
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceInterruptionBehavior
The behavior when a Spot Instance is interrupted.
The default is terminate.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-instanceinterruptionbehavior
PrimitiveType: String
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

### -LaunchSpecifications
The launch specifications for the Spot Fleet request.
If you specify LaunchSpecifications, you can't specify LaunchTemplateConfigs.
If you include On-Demand capacity in your request, you must use LaunchTemplateConfigs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications
DuplicatesAllowed: False
ItemType: SpotFleetLaunchSpecification
Type: List
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

### -LaunchTemplateConfigs
The launch template and overrides.
If you specify LaunchTemplateConfigs, you can't specify LaunchSpecifications.
If you include On-Demand capacity in your request, you must use LaunchTemplateConfigs.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-launchtemplateconfigs
DuplicatesAllowed: False
ItemType: LaunchTemplateConfig
Type: List
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

### -LoadBalancersConfig
One or more Classic Load Balancers and target groups to attach to the Spot Fleet request.
Spot Fleet registers the running Spot Instances with the specified Classic Load Balancers and target groups.
With Network Load Balancers, Spot Fleet cannot register instances that have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-loadbalancersconfig
Type: LoadBalancersConfig
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

### -ReplaceUnhealthyInstances
Indicates whether Spot Fleet should replace unhealthy instances.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-replaceunhealthyinstances
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -SpotPrice
The maximum price per unit hour that you are willing to pay for a Spot Instance.
The default is the On-Demand price.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-spotprice
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TargetCapacity
The number of units to request for the Spot Fleet.
You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O.
If the request type is maintain, you can specify a target capacity of 0 and add capacity later.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-targetcapacity
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TerminateInstancesWithExpiration
Indicates whether running Spot Instances are terminated when the Spot Fleet request expires.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-terminateinstanceswithexpiration
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-type
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidFrom
The start date and time of the request, in UTC format *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z.
By default, Amazon EC2 starts fulfilling the request immediately.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validfrom
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ValidUntil
The end date and time of the request, in UTC format *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z.
After the end date and time, no new Spot Instance requests are placed or able to fulfill the request.
If no value is specified, the Spot Fleet request remains until you cancel it.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validuntil
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EC2.SpotFleet.SpotFleetRequestConfigData
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html)

