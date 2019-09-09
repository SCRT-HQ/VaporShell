# Add-VSEMRClusterSpotProvisioningSpecification

## SYNOPSIS
Adds an AWS::EMR::Cluster.SpotProvisioningSpecification resource property to the template.
SpotProvisioningSpecification is a subproperty of the InstanceFleetProvisioningSpecifications property type.
SpotProvisioningSpecification determines the launch specification for Spot instances in the instance fleet, which includes the defined duration and provisioning timeout behavior.

## SYNTAX

```
Add-VSEMRClusterSpotProvisioningSpecification [[-BlockDurationMinutes] <Int32>] [-TimeoutAction] <Object>
 [-TimeoutDurationMinutes] <Int32> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::EMR::Cluster.SpotProvisioningSpecification resource property to the template.
SpotProvisioningSpecification is a subproperty of the InstanceFleetProvisioningSpecifications property type.
SpotProvisioningSpecification determines the launch specification for Spot instances in the instance fleet, which includes the defined duration and provisioning timeout behavior.

**Note**

The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -BlockDurationMinutes
The defined duration for Spot instances also known as Spot blocks in minutes.
When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies.
Valid values are 60, 120, 180, 240, 300, or 360.
The duration period starts as soon as a Spot instance receives its instance ID.
At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-blockdurationminutes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutAction
The action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout.
Valid values are TERMINATE_CLUSTER and SWITCH_TO_ON_DEMAND.
SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutaction
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutDurationMinutes
The spot provisioning timeout period in minutes.
If Spot instances are not provisioned within this time period, the TimeOutAction is taken.
Minimum value is 5 and maximum value is 1440.
The timeout applies only during initial provisioning, when the cluster is first created.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html#cfn-elasticmapreduce-cluster-spotprovisioningspecification-timeoutdurationminutes
PrimitiveType: Integer
UpdateType: Mutable

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.EMR.Cluster.SpotProvisioningSpecification
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-spotprovisioningspecification.html)

